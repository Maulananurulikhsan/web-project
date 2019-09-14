<?php 
session_start();
include('koneksi.php'); 

$tanggal	= $_POST['tanggal'];
$penulis	= $_POST['penulis'];
$judul		= $_POST['judul'];
$idkategori = $_POST['idkategori'];
$isi		= $_POST['isi'];

$id 		= $_GET['p'];

$sql		= "UPDATE post SET tanggal_post ='$tanggal', penulis='$penulis', judul='$judul', isi='$isi', idkategori='$idkategori' WHERE idpost = $id";
echo $sql ;
 if ($conn->query($sql) === TRUE) {
 	header("location: index.php?page=konten");
 }else{
 	echo "Error: ".$sql."<br>".$conn->error;
 }
?>