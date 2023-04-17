<?php 

function api_comment_delete($request){
  $comment_id = $request['id'];
  $user = wp_get_current_user();
  $user_id = $user->ID;

  $comment = get_comment($comment_id);
  if(!$comment){
    $response = new WP_Error('error', 'Comentário não encontrado', ['status' => 404]);
    return rest_ensure_response($response);
  }

  if($comment->user_id != $user_id){
    $response = new WP_Error('error', 'Usuário não possui permissão', ['status' => 401]);
    return rest_ensure_response($response);
  }
  wp_delete_comment($comment_id, true);
  return rest_ensure_response("Comentário deletado com sucesso.");
}

function register_api_comment_delete(){
  register_rest_route('api', '/comment/(?<id>[0-9]+)', [
    'methods' => WP_REST_Server:: DELETABLE,
    'callback' => 'api_comment_delete',
  ]);
}
add_action('rest_api_init', 'register_api_comment_delete');