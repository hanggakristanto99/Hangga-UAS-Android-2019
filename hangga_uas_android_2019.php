<?php 
    header('Content-Type: application/json');
    try {
        $dbh = new PDO('mysql:host=localhost;dbname=uas',"root","");
        $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $query = " select * from uas";

        $stmt = $dbh->query($query);
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $json[] = $row;
        }
    } catch(Exception $e) {
        echo $e->getMessage();
    }
    echo json_encode(array ('array' => $json,JSON_PRETTY_PRINT));
 ?>