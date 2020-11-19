<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

// Devuelve los detalles del juego en base al hash
$app->get('/api/siguiente', function (Request $request, Response $response) {
    return messageResponse($response, 'funciona', 200);
});
