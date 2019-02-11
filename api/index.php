<?php

require 'vendor/autoload.php';

$app = new \Slim\App();

$app->get('/posts', function ($request, $response, $args) {

	include 'models/posts.class.php';
	$posts = new posts();

	$array = $posts->get_posts();

	if(count($array) > 0){
     $array['response'] = true;
	 return $response->withStatus(200)
        ->withHeader('Content-Type', 'application/json')
        ->write(json_encode($array));

	}else{
     
     $array['response'] =  false;
	 return $response->withStatus(200)
        ->withHeader('Content-Type', 'application/json')
        ->write(json_encode($array));
	}


	});

$app->get('/post[/{id}]', function ($request, $response, $args) {
	$id = $args['id'];
    include 'models/posts.class.php';
	$posts = new posts();

	$array = $posts->get_post($id);
	
	if(count($array) > 0){
     $array['response'] = true;
	 return $response->withStatus(200)
        ->withHeader('Content-Type', 'application/json')
        ->write(json_encode($array));

	}else{
     
     $array['response'] =  false;
	 return $response->withStatus(200)
        ->withHeader('Content-Type', 'application/json')
        ->write(json_encode($array));
	}

})->setArgument('id', '');

$app->run();
