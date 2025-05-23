<?php


echo '<a href="../../">Home<br /></a>';

$content = file_get_contents('php://input'); //Receives the JSON Result from safaricom
$res = json_decode($content, true); //Convert the json to an array

$dataToLog = array(
    date("Y-m-d H:i:s"), //Date and time
    " MerchantRequestID: " . $res['Body']['stkCallback']['MerchantRequestID'],
    " CheckoutRequestID: " . $res['Body']['stkCallback']['CheckoutRequestID'],
    " ResultCode: " . $res['Body']['stkCallback']['ResultCode'],
    " ResultDesc: " . $res['Body']['stkCallback']['ResultDesc'],
);

$data = implode(" - ", $dataToLog);
$data .= PHP_EOL;
file_put_contents('transaction_log', $data, FILE_APPEND); //Logs the results to our log file


//Saves the result to the database
$conn = new PDO("mysql:host=localhost;dbname=login-with-google", "root", "");
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$stmt = $conn->query("SELECT * FROM payments ORDER BY id DESC LIMIT 1");
$stmt->execute();
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
foreach ($rows as $row) {
    $id = $row['id'];

    if ($res['Body']['stkCallback']['ResultCode'] == '1032') {
        $sql = $conn->query('UPDATE `payments` SET `status` = "cancelled" WHERE `id` = '.$id.' ');
        $rs = $sql->execute();
    } else {
        $sql = $conn->query('UPDATE `payments` SET `status` = "success" WHERE `id` = '.$id.' ');
        $rs = $sql->execute();
    }

    if ($rs) {
        file_put_contents('error_log', "Records Inserted", FILE_APPEND);;
    } else {
        file_put_contents('error_log', "Failed to insert Records", FILE_APPEND);
    }
}

echo $res;