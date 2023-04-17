import React from 'react';
const BigComment = ({ comment }) => {
  const [verMais, setVerMais] = React.useState(false);
  const shortComment = comment.substr(0, 50);

  function toggleVerMais() {
    setVerMais(!verMais);
  }

  if (verMais) {
    return (
      <span>
        <p>
          {comment} <span onClick={toggleVerMais}>Ver menos...</span>
        </p>
      </span>
    );
  } else {
    return (
      <span>
        <p>
          {shortComment} <span onClick={toggleVerMais}>Ver mais...</span>
        </p>
      </span>
    );
  }
};

export default BigComment;
