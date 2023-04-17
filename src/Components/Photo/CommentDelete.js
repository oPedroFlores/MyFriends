import React from 'react';
import { COMMENT_DELETE } from '../../api';
import useFetch from '../../Hooks/useFetch';
import { ReactComponent as Trash } from '../../Assets/trash.svg';
const CommentDelete = ({ id, removeComment, className }) => {
  const { loading, request } = useFetch();
  async function handleClick() {
    const confirm = window.confirm(
      'Tem certeza que deseja deletar este comentário?',
    );
    if (confirm) {
      const { url, options } = COMMENT_DELETE(id);
      const { response } = await request(url, options);
      if (response.ok) {
        removeComment(id);
      }
    }
  }
  return (
    <>
      {loading ? (
        <Trash className={className} />
      ) : (
        <Trash onClick={handleClick} className={className} />
      )}
    </>
  );
};

export default CommentDelete;
