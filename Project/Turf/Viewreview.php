<?php
include("../Assets/Connection/Connection.php");
include('head.php');
$sel="select*from tbl_review r inner join tbl_user s on r.user_id=s.user_id where turf_id='".$_SESSION['tid']."' ORDER BY review_id DESC";
$data=$conn->query($sel);
$i=0;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View review</title>
</head>
<body>
   <table border="1" align="center">
    <tr>        
        <th>SL.NO</th>
        <th>USERNAME</th>
        <th>REEVIEW</th>
        <th>STAR COUNT</th>
        <th>DATE</th>
    </tr>
    <?php 
     while($val=$data->fetch_assoc())
     {
      $i++;
    ?>
    <tr>
      <td><?php echo $i ?></td>
      <td><?php echo $val['user_name'] ?></td>
      <td><?php echo $val['review_details'] ?></td>
      <td><?php echo $val['review_rating'] ?></td>
      <td><?php echo $val['review_date'] ?></td>
    </tr>
    <?php 
     }
    ?>
   </table> 
</body>
 <?php 
  include('Foot.php');
 ?>
</html>