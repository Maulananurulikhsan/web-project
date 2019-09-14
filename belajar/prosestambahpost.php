<?php 
session_start();
include('koneksi.php'); 

// $tanggal	= $_POST['tanggal'];
$penulis	= $_POST['penulis'];
$judul		= $_POST['judul'];
$idkategori = $_POST['idkategori'];
$isi		= $_POST['isi'];

// $sql 		= "INSERT INTO post(tanggal_post,penulis,judul,isi,idkategori) VALUES($tanggal,'$penulis','$judul','$isi','$idkategori')";

$sql		= "INSERT INTO post (penulis, judul, isi, idkategori) VALUES ('$penulis','$judul','$isi','$idkategori')";

if ($conn->query($sql) === TRUE) {
	header("location: index.php?page=konten");
}else{
	echo "Error: ".$sql."<br>".$conn->error;
}
?>