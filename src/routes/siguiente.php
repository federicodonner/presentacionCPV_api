<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

// Devuelve los detalles del juego en base al hash
$app->get('/api/siguiente', function (Request $request, Response $response) {
    $pregunta = $request->getParam('pregunta');

    $options = array(
      'cluster' => 'us2',
      'useTLS' => true
    );
    $pusher = new Pusher\Pusher(
        '57e880a09cb967a7829c',
        '46852057512240da4efb',
        '1109555',
        $options
    );

    $data['pregunta'] = $pregunta;
    $pusher->trigger('my-channel', 'my-event', $data);

    return messageResponse($response, 'funciona', 200);
});
