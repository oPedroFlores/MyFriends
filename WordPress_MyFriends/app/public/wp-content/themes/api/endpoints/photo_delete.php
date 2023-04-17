<?php 

function api_photo_delete($request){
  $post_id = $request['id'];
  $user = wp_get_current_user();
  $user_id = $user->ID;
  $author_id = (int) $post->post_author;
  $post = get_post($post_id);

  if($user_id == $author_id || !isset($post)){
    $response = new WP_Error('error', 'Usuário não possui permissão', ['status' => 401]);
    return rest_ensure_response($response);
  };

  $attachment_id = get_post_meta($post_id, 'img', true);
  wp_delete_attachment( $attachment_id, true );
  wp_delete_post($post_id, true);

  return rest_ensure_response("Post deletado com sucesso.");
}

  function register_api_photo_delete(){
    register_rest_route('api', '/photo/(?<id>[0-9]+)', [
      'methods' => WP_REST_Server:: DELETABLE,
      'callback' => 'api_photo_delete',
    ]);
  }
add_action('rest_api_init', 'register_api_photo_delete');
?>