<?php
include "models/m_konten.php";

$konten = new konten($connection);

?>

<div class="row">
          <div class="col-lg-12">
            <h1>Konten</h1>
            <ol class="breadcrumb">
              <li><a href="index.html"><i class="icon-dashboard"></i> Konten</a></li>
            </ol>
          </div>
          </div>

          <div class="row">
              <div class="col-lg-12">
              
              <div class="table-responsive">
                  <table class="table table-bordered table-hover table-striped">
                  <tr>
                    <th>No.</th>
                    <th>Tanggal_post</th>
                    <th>Penulis</th>
                    <th>Judul</th>
                    <th>Isi</th>
                    <th>Opsi</th>
                </tr>
                    <?php
                    $no = 1;
                    $tampil = $konten->tampil();
                    while($data = $tampil->fetch_object()) {     
                    ?>
                    <tr>
                       <td align="center"><?php echo $no++."."; ?></td>
                       <td><?php echo $data->tanggal_post; ?></td>
                       <td><?php echo $data->penulis; ?></td>
                       <td><?php echo $data->judul; ?></td>
                       <td><?php echo $data->isi; ?></td>
                       <td align="center">
                          <a class="btn btn-info btn-xs" href="edit_post.php?id=<?php echo $data->idpost; ?>"><i class="fa fa-edit"></i>Edit</a>
                          <a class="btn btn-danger btn-xs" href="hapus_post.php?id=<?php echo $data->idpost; ?>"><i class="fa fa-trash-o"></i>Delete</a>
                       </td>
                    </tr>
                    <?php
                    } ?>
                  </table>
              </div>
              
              <button type="button" class="btn btn-success" data-toggle="modal" data-target="#tambah">Tambah Data</button>

              <div id="tambah" class="modal fade" role="dialog">
                   <div class="modal-dialog">
                        <div class="modal-content">
                             <div class="modal-header">
                                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                                 <h4 class="modal-title">Tambah Konten</h4>
                             </div>
                             <form action="prosestambahpost.php" method="post">
                                   <div class="modal-body">
                                        <!-- <div class="form-group">
                                            <label class="control-label" for="tgl_post">Tanggal_Post</label>
                                            <input type="date" name="tgl_post" class="form-control" id="tgl_post" required>
                                        </div> -->
                                        <div class="form-group">
                                            <label class="control-label" for="penulis">Penulis</label>
                                            <input type="text" name="penulis" class="form-control" id="penulis" required>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="judul">Judul</label>
                                            <input type="text" name="judul" class="form-control" id="judul" required>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="isi">Isi</label>
                                            <input type="text" name="isi" class="form-control" id="isi" required>
                                        </div>
                                   </div>
                                   <div class="modal-footer">
                                        <button type="reset" class="btn btn-danger">Reset</button>
                                        <input type="submit" class="btn btn-success" name="tambah" value="simpan">
                                   </div>
                             </form>
                             <?php
                             if(@$_POST['tambah']) {
                               $tgl_post = $connection->conn->real_escape_string($_POST['tgl_post']);
                               $penulis = $connection->conn->real_escape_string($_POST['penulis']);
                               $judul = $connection->conn->real_escape_string($_POST['judul']);
                               $isi = $connection->conn->real_escape_string($_POST['isi']);
                               
                             }
                             ?>
                             
                        </div>
                   </div>
              </div>
            </div>
          </div>
