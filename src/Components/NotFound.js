import React from 'react';
import styles from './NotFound.module.css';
import { ReactComponent as Erro404 } from '../Assets/404.svg';
import { Link } from 'react-router-dom';

const NotFound = () => {
  return (
    <div className={`container mainContainer`}>
      <h1 className={`${styles.ops} title`}>Ops!</h1>
      <p className={styles.p}>
        Parece que a página que você pesquisou não foi encontrada :(
      </p>
      <Link className={styles.retornar} to="/">
        Clique aqui para voltar ao inicio :)
      </Link>
      <Erro404 />
    </div>
  );
};

export default NotFound;
