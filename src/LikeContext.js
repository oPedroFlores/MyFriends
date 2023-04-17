// LikeStorage.js
import React from 'react';

export const LikeContext = React.createContext();
export const LikeStorage = ({ children }) => {
  const [curtido, setCurtido] = React.useState([]);
  const [totalLikes, setTotalLikes] = React.useState([]);

  const atualizarCurtidas = (photos) => {
    photos.forEach((photo) => {
      const checkCurtido = curtido.some((item) => item[0] === photo.id);
      if (!checkCurtido) {
        setCurtido([...curtido, [photo.id, photo.curtido]]);
        setTotalLikes([...totalLikes, [photo.id, photo.totalCurtidas]]);
      }
    });
  };

  const toggleLike = (photo) => {
    setCurtido(
      curtido.map((item) =>
        item[0] === photo.id ? [item[0], !item[1]] : item,
      ),
    );
  };

  return (
    <LikeContext.Provider
      value={{ curtido, atualizarCurtidas, toggleLike, totalLikes }}
    >
      {children}
    </LikeContext.Provider>
  );
};
