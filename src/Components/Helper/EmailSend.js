import React from 'react';

const EmailSend = ({ user, data }) => {
  return (
    <>
      <p style={{ color: '#4c1' }}>
        Um email foi enviado ao endereço registrado na conta "{user}"
      </p>
      <p style={{ color: '#4c1', paddingTop: '.5rem' }}>
        Acesse-o para poder recadastrar a sua senha.
      </p>
    </>
  );
};

export default EmailSend;
