import React from 'react';
import { UserContext } from '../../UserContext';
import PhotoCommentsForm from './PhotoCommentsForm';
import styles from './PhotoComments.module.css';
import BigComment from './BigComment';
import { Link } from 'react-router-dom';
import CommentDelete from './CommentDelete';

const PhotoComments = (props) => {
  const [comments, setComments] = React.useState(() => props.comments);
  const commentsSection = React.useRef(null);
  const { login } = React.useContext(UserContext);
  const [updatedComments, setUpdatedComments] = React.useState([]);
  React.useEffect(() => {
    commentsSection.current.scrollTop = commentsSection.current.scrollHeight;
  }, [comments]);

  function removeComment(commentId) {
    const filteredComments = comments.filter(
      (comment) => comment.comment_ID !== commentId,
    );
    setUpdatedComments(filteredComments);
    setComments(filteredComments);
  }

  return (
    <>
      <ul
        ref={commentsSection}
        className={`${styles.comments} ${props.single ? styles.single : ''}`}
      >
        {updatedComments.length > 0
          ? updatedComments.map((comment) => (
              <li key={comment.comment_ID}>
                {comment.comment_author === props.username ? (
                  <CommentDelete
                    className={styles.trash}
                    id={comment.comment_ID}
                    removeComment={removeComment}
                  />
                ) : (
                  ''
                )}
                <b>
                  <Link to={`/perfil/${comment.comment_author}`}>
                    {comment.comment_author}:
                  </Link>
                </b>
                <span
                  id={`${
                    comment.comment_content.length >= 60
                      ? styles.bigComment
                      : ''
                  }`}
                >
                  {comment.comment_content.length >= 60 ? (
                    <BigComment comment={comment.comment_content} />
                  ) : (
                    comment.comment_content
                  )}
                </span>
              </li>
            ))
          : comments.map((comment) => (
              <li key={comment.comment_ID}>
                {comment.comment_author === props.username ? (
                  <CommentDelete
                    className={styles.trash}
                    id={comment.comment_ID}
                    removeComment={removeComment}
                  />
                ) : (
                  ''
                )}
                <b>
                  <Link to={`/perfil/${comment.comment_author}`}>
                    {comment.comment_author}:
                  </Link>
                </b>
                <span
                  id={`${
                    comment.comment_content.length >= 60
                      ? styles.bigComment
                      : ''
                  }`}
                >
                  {comment.comment_content.length >= 60 ? (
                    <BigComment comment={comment.comment_content} />
                  ) : (
                    comment.comment_content
                  )}
                </span>
              </li>
            ))}
      </ul>

      {login && (
        <PhotoCommentsForm
          single={props.single}
          id={props.id}
          setComments={setComments}
        />
      )}
    </>
  );
};

export default PhotoComments;
