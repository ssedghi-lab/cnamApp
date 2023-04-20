<?php
use Doctrine\ORM\Tools\Setup;
use Doctrine\ORM\EntityManager;
date_default_timezone_set('America/Lima');
require_once "vendor/autoload.php";
$isDevMode = true;
$config = Setup::createYAMLMetadataConfiguration(array(__DIR__ . "/config/yaml"), $isDevMode);
$conn = array(
'host' => 'dpg-cfrgpuun6mphhm2kvsv0-a.frankfurt-postgres.render.com',

'driver' => 'pdo_pgsql',
'user' => 'cnam_ivrz_user',
'password' => 'sajn8BEr6Tn4nNIhlDZefb06SOJhGCxF',
'dbname' => 'cnam_ivrz',
'port' => '5432'
);



$entityManager = EntityManager::create($conn, $config);
