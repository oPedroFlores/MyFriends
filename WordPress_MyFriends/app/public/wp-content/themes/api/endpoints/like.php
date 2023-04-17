<?php 

function api_like($request){
  $post_id = $request['id'];
  $post = get_post($post_id);  
  $user = wp_get_current_user();
  $user_id = $user->ID;
  $photo = photo_data($post);
  $info = false;
    if($user_id === 0){
      $response = new WP_Error('error', 'Usuário não possui permissão', ['status' => 401]);
      return rest_ensure_response($response);
    }
 $photo = photo_data($post);
 $curtidas = unserialize($photo['curtidas']);
 
  //Se já tiver like então remover
  
 if (in_array($user_id, $curtidas)){
  $curtidas = array_values(array_diff($curtidas, array($user_id)));
  $info = false;
} else {
  array_push($curtidas, $user_id);
  $info = true;
}
  $length = count($curtidas);


  update_post_meta($post_id, 'curtidas', $curtidas);
  update_post_meta($post_id, 'totalCurtidas', $length);
 
 return rest_ensure_response($info);
}

  function register_api_like(){
    register_rest_route('api', '/like/(?<id>[0-9]+)', [
      'methods' => WP_REST_Server:: READABLE,
      'callback' => 'api_like',
    ]);
  }
add_action('rest_api_init', 'register_api_like');
?>