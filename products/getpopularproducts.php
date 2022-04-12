<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

$url = parse_url(filter_input(INPUT_SERVER,'PATH_INFO'),PHP_URL_PATH);
$parameters = explode('/', $url);

try {
    $db = openDb();
    $sql = "select * from popular_product";
    $query = $db->query($sql);
    $products = $query->fetchAll(PDO::FETCH_ASSOC);
    

    header('HTTP/1.1 200 OK');
    echo json_encode(array(
     "products" => $products
    ));

} catch (PDOException $pdoex) {
    returnError($pdoex);
}