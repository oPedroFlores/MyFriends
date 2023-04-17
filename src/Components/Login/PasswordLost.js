import React from 'react';
import Input from '../Forms/Input';
import Button from '../Forms/Button';
import UseForm from '../../Hooks/useForm';
import useFetch from '../../Hooks/useFetch';
import { PASSWORD_LOST } from '../../api';
import Error from '../Helper/Error';
import EmailSend from '../Helper/EmailSend';
import Head from '../Helper/Head';
const PasswordLost = () => {
  const { data, loading, error, request } = useFetch();
  const login = UseForm();

  async function handleSubmit(event) {
    event.preventDefault();
    if (login.validate()) {
      const { url, options } = PASSWORD_LOST({
        login: login.value,
        url: window.location.href.replace('lostpass', 'recover'),
      });
      await request(url, options);
    }
  }

  return (
    <section className="animeLeft">
      <Head
        title="Perdeu a senha"
        description="Página para enviar email para resetar a senha no site."
      />
      {data ? (
        <h1 className={`title`} style={{ marginTop: '2rem' }}>
          Email enviado.
        </h1>
      ) : (
        <h1 className="title" style={{ marginTop: '2rem' }}>
          Perdeu a senha?
        </h1>
      )}

      {data ? (
        <EmailSend data={data} user={login.value} />
      ) : (
        <form onSubmit={handleSubmit}>
          <Input label="Email ou Usuário" type="text" name="login" {...login} />
          {loading ? (
            <Button disabled>Enviando...</Button>
          ) : (
            <Button>Enviar email</Button>
          )}
        </form>
      )}

      <Error error={error} />
    </section>
  );
};

export default PasswordLost;
