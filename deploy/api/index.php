<?php
	use Psr\Http\Message\ResponseInterface as Response;
	use Psr\Http\Message\ServerRequestInterface as Request;
	use Slim\Factory\AppFactory;


	use Tuupola\Middleware\HttpBasicAuthentication;
	use \Firebase\JWT\JWT;

	require __DIR__ . '/../vendor/autoload.php';
	require_once __DIR__ . '/../bootstrap.php';
	
	$app = AppFactory::create();

	require_once __DIR__ . '/middleware.php';
	require_once __DIR__ . '/route.php';
	require_once __DIR__ . '/controller.php';

	
	// Chargement du Middleware
	$app->add(new Tuupola\Middleware\JwtAuthentication($options));
	
	// Run app
	$app->run();
