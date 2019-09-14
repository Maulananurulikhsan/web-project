<?php
class konten {

    private $mysqli;

    function __construct($conn) {
        $this->mysqli = $conn;
    }

    public function tampil($id = null) {
        $db = $this->mysqli->conn;
        $sql = "SELECT * FROM post";
        if($id != null) {
            $sql .= " WHERE idpost = $id";
        }
        $query = $db->query($sql) or die ($db->error);
        return $query;
    }

    public function tambah($tgl_post, $penulis, $judul, $isi) {
        $db = $this->mysqli->conn;
        $db->query("INSERT INTO post VALUES ('', '$tgl_post', '$penulis', '$judul', '$isi')") or die ($db->error);
    }

}

?>