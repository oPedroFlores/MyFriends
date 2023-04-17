import React from 'react';
import styles from './PhotoContent.module.css';
import { Link } from 'react-router-dom';
import PhotoComments from './PhotoComments';
import { ReactComponent as Curtidas } from '../../Assets/like-black.svg';
import { ReactComponent as Visualizacoes } from '../../Assets/visualizacao-black.svg';
import { UserContext } from '../../UserContext';
import PhotoDelete from './PhotoDelete';
import Image from '../Helper/Image';
import useFetch from '../../Hooks/useFetch';
import { LIKE } from '../../api';
import { useNavigate } from 'react-router-dom';
import { useDoubleTap } from 'use-double-tap';
import { LikeContext } from '../../LikeContext';
import { InfoContext } from '../../InfoContext';

const PhotoContent = ({ data, single }) => {
  const user = React.useContext(UserContext);
  const { photo, comments } = data;
  const { request } = useFetch();
  const navigate = useNavigate();
  const { views } = React.useContext(InfoContext);
  const { curtido, totalLikes, toggleLike } = React.useContext(LikeContext);
  const likeIndex = curtido.findIndex((item) => item[0] === photo.id);
  let editar = false;
  let username = 0;
  if (user.data !== null) {
    username = user.data.username;
    editar = user.data && user.data.username === photo.author;
  }
  //Double touch na foto
  const bind = useDoubleTap((event) => {
    const mediaQuery = window.matchMedia('(max-width: 64rem)');
    if (mediaQuery.matches) handleLike();
  });

  //Clique no like
  async function handleLike() {
    if (user.data === null) navigate('/login');
    const { url, options } = LIKE(photo.id);
    const { json } = await request(url, options);
    if (json) {
      totalLikes[likeIndex][1] = parseInt(totalLikes[likeIndex][1]) + 1;
    } else {
      totalLikes[likeIndex][1] = parseInt(totalLikes[likeIndex][1]) - 1;
    }
    toggleLike(photo);
  }

  return (
    <div className={`${styles.photo} ${single ? styles.single : ''}`}>
      <div className={styles.img} onDoubleClick={handleLike} {...bind}>
        <Image src={photo.src} alt={photo.title} />
      </div>
      <div className={styles.details}>
        <div>
          <div className={styles.author}>
            {editar ? (
              <PhotoDelete id={photo.id} />
            ) : (
              <Link to={`/perfil/${photo.author}`}>@{photo.author}</Link>
            )}
            <div className={styles.divSvg}>
              <span className={styles.visualizacoes}>
                <Visualizacoes className={styles.svg} />
                {views[likeIndex][1]}
              </span>
              <span
                className={
                  !curtido[likeIndex][1] ? styles.curtidas : styles.curtido
                }
                onClick={handleLike}
              >
                <Curtidas className={styles.svg} />
                <span id={styles.spanLike}>{totalLikes[likeIndex][1]}</span>
              </span>
            </div>
          </div>
          <h1 className={styles.legenda}>
            <Link to={`/foto/${photo.id}`}>{photo.title}</Link>
          </h1>
        </div>
      </div>
      <PhotoComments
        id={photo.id}
        single={single}
        comments={comments}
        username={username}
      />
    </div>
  );
};

export default PhotoContent;
