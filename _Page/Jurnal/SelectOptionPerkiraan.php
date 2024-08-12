<?php
    include "../../_Config/Connection.php";
    echo '<option value="">Pilih</option>';
    $QryAkun= mysqli_query($Conn, "SELECT*FROM akun_perkiraan ORDER BY nama");
    while ($DataAkun=mysqli_fetch_array($QryAkun)) {
        $id_perkiraan = $DataAkun['id_perkiraan'];
        $kode= $DataAkun['kode'];
        $nama_perkiraan = $DataAkun['nama'];
        $level= $DataAkun['level'];
        $saldo_normal= $DataAkun['saldo_normal'];
        //Cek apakah di levelnya ada lagi?
        $LevelTerbawah = mysqli_num_rows(mysqli_query($Conn, "SELECT*FROM akun_perkiraan WHERE kd$level='$kode'"));
        if($LevelTerbawah=="1"){
            echo '<option value="'.$id_perkiraan.'">'.$kode.'-'.$nama_perkiraan.' ('.$saldo_normal.')</option>';
        }
    }
?>