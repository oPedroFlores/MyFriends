import React from 'react';
import Error from '../Helper/Error';
import styles from './FeedPhotosItem.module.css';
import { ReactComponent as Curtidas } from '../../Assets/like.svg';
import { ReactComponent as Visualizacao } from '../../Assets/visualizacao.svg';
import Image from '../Helper/Image';
const FeedPhotosItem = ({
  photo,
  setModalPhoto,
  curtido,
  totalLikes,
  views,
}) => {
  const likeIndex = curtido.findIndex((item) => item[0] === photo.id);

  function handleClick() {
    setModalPhoto(photo);
  }

  if (photo.src) {
    return (
      <li className={styles.photo} onClick={handleClick}>
        <Image alt={photo.title} src={photo.src} />
        <div className={styles.infos}>
          {likeIndex >= 0 && (
            <span className={styles.visualizacao}>
              <Visualizacao />
              {views[likeIndex][1]}
            </span>
          )}

          {likeIndex >= 0 && (
            <span
              className={
                !curtido[likeIndex][1] ? styles.curtidas : styles.curtido
              }
            >
              <Curtidas />
              {totalLikes[likeIndex][1]}
            </span>
          )}
        </div>
      </li>
    );
  } else {
    return <Error error="ERRO: Não foi possível carregar a imagem" />;
  }
};

export default FeedPhotosItem;
