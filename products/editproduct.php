<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

$input = json_decode(file_get_contents('php://input'));
$name = filter_var($input->name,FILTER_SANITIZE_FULL_SPECIAL_CHARS);
$price = filter_var($input->price,FILTER_SANITIZE_FULL_SPECIAL_CHARS);
$old_price = filter_var($input->oldprice,FILTER_SANITIZE_FULL_SPECIAL_CHARS);
/* $image = */
$description = filter_var($input->description,FILTER_SANITIZE_FULL_SPECIAL_CHARS);
$category_id = filter_var($input->categoryid,FILTER_SANITIZE_FULL_SPECIAL_CHARS);
$id = filter_var($input->productid,FILTER_SANITIZE_FULL_SPECIAL_CHARS);

try {
    $db = openDB();
    $sql = "update product set name = '$name', description = '$description', price = '$price', old_price = $old_price, category_id = '$category_id' where id = '$id'";
    executeInsert($db,$sql);
    $data = array('id' => $id, 'name' => $name, 'description' => $description, 'price' => $price, 'old_price' => $old_price);
    print json_encode($data);
} catch (PDOException $pdoex) {
    returnError($pdoex);
}