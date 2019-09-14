<?php
include('koneksi.php');

//mengambil id dari url
$idpost=$_GET['id'];

//perintah sql
$sql="delete from post where idpost='$idpost'";

//menjalankan sql
if ($conn->query($sql) == TRUE)  
{
    header("location: index.php?page=konten");
}
?>