<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

$url = parse_url(filter_input(INPUT_SERVER,'PATH_INFO'),PHP_URL_PATH);
$parameters = explode('/', $url);
//$category_id = $parameters[1];

try {
    $db = openDb();
    $sql = "select * from product where old_price != null ";
    $query = $db->query($sql);
    $products = $query->fetch(PDO::FETCH_ASSOC);

   /* $sql = "select * from product where category_id = $category_id";
    $query = $db->query($sql);
    $products = $query->fetchAll(PDO::FETCH_ASSOC);*/
    

    header('HTTP/1.1 200 OK');
    echo json_encode(array(
     //"category" => $category['name'],
     "products" => $products
    ));

} catch (PDOException $pdoex) {
    returnError($pdoex);
}