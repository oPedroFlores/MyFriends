import React from 'react';
import FeedPhotosItem from './FeedPhotosItem';
import useFetch from '../../Hooks/useFetch';
import { PHOTOS_GET } from '../../api';
import Error from '../Helper/Error';
import Loading from '../Helper/Loading';
import styles from './FeedPhotos.module.css';
import { LikeContext } from '../../LikeContext';
import { InfoContext } from '../../InfoContext';
const FeedPhotos = ({ page, user, setModalPhoto, setInfinite }) => {
  const { curtido, atualizarCurtidas, totalLikes } =
    React.useContext(LikeContext);

  const { views, atualizarViews } = React.useContext(InfoContext);

  const { data, loading, error, request } = useFetch();
  React.useEffect(() => {
    async function fetchPhotos() {
      const total = 6;
      const { url, options } = PHOTOS_GET({ page, total: 6, user });
      const { response, json } = await request(url, options);
      if (response && response.ok && json.length < total) setInfinite(false);
    }
    fetchPhotos();
  }, [request, user, page, setInfinite]);

  if (error) return <Error error={error} />;
  if (loading) return <Loading />;

  if (data) {
    atualizarCurtidas(data);
    atualizarViews(data);
    return (
      <ul className={`${styles.feed} animeLeft`}>
        {data.map((photo) => (
          <FeedPhotosItem
            views={views}
            totalLikes={totalLikes}
            curtido={curtido}
            key={photo.id}
            photo={photo}
            setModalPhoto={setModalPhoto}
          />
        ))}
      </ul>
    );
  } else return null;
};

export default FeedPhotos;
