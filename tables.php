<?php

  mysql_connect("localhost", "root", "password"); //can test return value for true or false to check conn
  
  mysql_select_db("nyse");

  $rows = mysql_query("SELECT * FROM nyse_2016_11_28_12_46");

  $ncol = mysql_numfields($rows);
  echo "<table border='1' style='width:40%'>"; //creates a table
  echo "<tr>";
  for($i = 0; $i < $ncol; $i++){
    $header = mysql_fieldname($rows,$i);
    echo "<th> <b> <font size = 4> $header </font> </b> </th>";
  }
  echo "</tr>";
 

  while($body_elem = mysql_fetch_array($rows)){
    echo "<tr>";
    for($i = 0; $i < $ncol; $i++){
      echo "<td> $body_elem[$i] </td>";
    }
    echo "</tr>";
  }
  echo "</br>";
  echo "</table>";
 

?>

