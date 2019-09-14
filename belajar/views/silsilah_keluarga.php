<?php
include "models/m_keluarga.php";

$keluarga = new keluarga($connection);

?>

<div class="row">
          <div class="col-lg-12">
            <h2>SILSILAH KELUARGA</h2>
            <ol class="breadcrumb">
              <li><a href="index.html"><i class="icon-dashboard"></i> silsilah keluarga</a></li>
            </ol>
          </div>
          </div>

          <div class="row">
              <div class="col-lg-12">
              
              <div class="table-responsive">
                  <table class="table table-bordered table-hover table-striped">
                  <tr>
                    <th>Id keluarga</th>
                    <th>Nama</th>
                    <th>Tanggal Lahir</th>
                    <th>Anak ke</th>
                    <th>Tingkat Pendidikan</th>
                </tr>
                    <?php
                    $no = 1;
                    $tampil = $keluarga->tampil();
                    while($data = $tampil->fetch_object()) {     
                    
                    ?>
                    <tr>
                       <td><?php echo $data->id_keluarga; ?></td>
                       <td><?php echo $data->nama; ?></td>
                       <td><?php echo $data->tgllahir; ?></td>
                       <td><?php echo $data->anak_ke; ?></td>
                       <td><?php echo $data->tingkat_pendidikan; ?></td>
                    </tr>
                    <?php
                    } ?>
                  </table>
              </div>
              </div>