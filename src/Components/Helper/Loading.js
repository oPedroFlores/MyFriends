import React from 'react';
import styles from './Loading.module.css';
import { ReactComponent as LoadingSVG } from '../../Assets/loading-white.svg';
const Loading = () => {
  return (
    <div className={styles.wrapper}>
      <LoadingSVG />
    </div>
  );
};

export default Loading;
