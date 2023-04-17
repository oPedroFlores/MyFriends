<?php 

function api_like_info($request){
  $post_id = $request['id'];
  $post = get_post($post_id);
  $user = wp_get_current_user();
  $user_id = $user->ID;
  $info = false;

  // if($user_id === 0){
  //   return rest_ensure_response($info);
  //  }
  
  $photo = photo_data($post);
  $curtidas = unserialize($photo['curtidas']);

  if(in_array($user_id, $curtidas)){
    $info = true;
  }
  
  return rest_ensure_response($info);
}

  function register_api_like_info(){
    register_rest_route('api', '/likeinfo/(?<id>[0-9]+)', [
      'methods' => WP_REST_Server:: READABLE,
      'callback' => 'api_like_info',
    ]);
  }
add_action('rest_api_init', 'register_api_like_info');
?>