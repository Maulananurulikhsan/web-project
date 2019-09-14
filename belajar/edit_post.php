<?php 
session_start();
include('koneksi.php');

$user = '';
if(isset($_SESSION['user'])) $user = $_SESSION['user'];

$sql = 'SELECT * FROM kategori';
$result = $conn->query($sql);

$id = $_GET['id'];
$sql2 = "SELECT * FROM post WHERE idpost = $id";

$result2 = $conn->query($sql2);
$row2 = $result2->fetch_row();



?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Admin</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="assets/css/sb-admin.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
  </head>

  <body>

    <div id="wrapper">

      <!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="">SB Admin</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">
            <li><a href="?page=dashboard"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-shopping-cart"></i>Konten <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="?page=konten">Konten</a></li>
                <li><a href="#">Grafik</a></li>
                <li><a href="#">Report</a></li>
              </ul>
            </li>
          </ul>

          <ul class="nav navbar-nav navbar-right navbar-user">
            <li class="dropdown user-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> ikhsan_vodcabily <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                <li><a href="#"><i class="fa fa-envelope"></i> Inbox <span class="badge">7</span></a></li>
                <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
                <li class="divider"></li>
                <li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </nav>

      <div id="page-wrapper">
<form action="proseseditpost.php?p=<?=$id?>" method="POST">
                                        <div class="form-group">
                                            <label class="control-label" for="penulis">Penulis</label>
                                            <input type="text" name="penulis" class="form-control" id="penulis" value="<?php echo $row2[2]?>" required>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="judul">Judul</label>
                                            <input type="text" name="judul" class="form-control" id="judul" value="<?php echo $row2[3]?>"  required>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="isi">Isi</label>
                                            <textarea name="isi" class="form-control" id="isi" required><?php echo $row2[4] ?></textarea>
                                        </div>
                                        <a class="btn btn-danger" href='index.php?page=konten'>Back</a>
                                        <input type="submit" class="btn btn-success" name="tambah" value="simpan">
                                   
</form>
</div>
        </div><!-- /.row -->

      </div><!-- /#page-wrapper -->

    </div><!-- /#wrapper -->

    <!-- JavaScript -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <script src="assets/js/bootstrap.js"></script>

  </body>
</html>