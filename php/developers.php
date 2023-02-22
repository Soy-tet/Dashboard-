<?php
$hostName = "localhost";
$userName = "root";
$password = "";
$databaseName = "Dashboard";
 $conn = new mysqli($hostName, $userName, $password, $databaseName);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>
<?php

$db= $conn;
$tableName="Content";
if(isset($_GET['delete']))
{
  $id= validate($_GET['delete']);
  $condition =['id'=>$id];
  $deleteMsg=delete_data($db, $tableName, $condition);
  header("location:form.php");

}
function delete_data($db, $tableName, $condition){

    $conditionData='';
    $i=0;
    foreach($condition as $index => $data){
        $and = ($i > 0)?' AND ':'';
         $conditionData .= $and.$index." = "."'".$data."'";
         $i++;
    }

  $query= "DELETE FROM ".$tableName." WHERE id;";
  $result= $db->query($query);
  if($result){
    $msg="data was deleted successfully";
  }else{
    $msg= $db->error;
  }
  return $msg;
}

function validate($value) {
$value = trim($value);
$value = stripslashes($value);
$value = htmlspecialchars($value);
return $value;
}
?>