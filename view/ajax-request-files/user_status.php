<?php
include_once '../../vendor/autoload.php';
$sql = "UPDATE u_user_profile
SET status = CASE WHEN (status =1) THEN 0 ELSE 1 END 
where profile_id=:profile_id";
$stmt = \App\DBConnection::myQuery($sql);
$stmt->bindValue(':profile_id', $_POST['profile_id']);
$stmt->execute();
