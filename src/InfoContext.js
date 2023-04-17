import React from 'react';
export const InfoContext = React.createContext();

export const InfoStorage = ({ children }) => {
  const [views, setViews] = React.useState([]);

  const atualizarViews = (photos) => {
    photos.forEach((photo) => {
      if (!views.some((item) => item[0] === photo.id)) {
        setViews([...views, [photo.id, photo.acessos]]);
      }
    });
  };

  const addView = (photo) => {
    const index = views.findIndex((item) => item[0] === photo.id);
    if (index !== -1) {
      setViews(
        views.map((item) =>
          item[0] === photo.id ? [item[0], +item[1] + 1] : item,
        ),
      );
    }
  };

  return (
    <InfoContext.Provider value={{ views, setViews, atualizarViews, addView }}>
      {children}
    </InfoContext.Provider>
  );
};
