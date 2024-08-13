<?php
    //koneksi dan session
    include "../../_Config/Connection.php";
    include "../../_Config/GlobalFunction.php";
    date_default_timezone_set("Asia/Jakarta");
    //Menghitung Total
    $JumlahTotal = mysqli_num_rows(mysqli_query($Conn, "SELECT id_kontak FROM kontak"));
    $SudahDihubungi = mysqli_num_rows(mysqli_query($Conn, "SELECT id_kontak FROM kontak WHERE sudah_dihubungi='1'"));
    $BelumDihubungi = mysqli_num_rows(mysqli_query($Conn, "SELECT id_kontak FROM kontak WHERE sudah_dihubungi='0'"));
    $KontakCs = mysqli_num_rows(mysqli_query($Conn, "SELECT id_kontak FROM kontak WHERE id_anggota!='0'"));
    //Format Angka
   
    $JumlahTotal = formatAngkaRibuJutaan($JumlahTotal);
    $SudahDihubungi = formatAngkaRibuJutaan($SudahDihubungi);
    $BelumDihubungi = formatAngkaRibuJutaan($BelumDihubungi);
    $KontakCs = formatAngkaRibuJutaan($KontakCs);
?>
<div class="row">
    <div class="col-md-3 mb-4 text-center">
        <b class="card-title"><i class=""></i> Total</b><br>
        <h3 class="text text-light"><?php echo "$JumlahTotal"; ?></h3>
    </div>
    <div class="col-md-3 mb-4 text-center">
        <b class="card-title">Dihubungi</b><br>
        <h3 class="text text-light"><?php echo "$SudahDihubungi"; ?></h3>
    </div>
    <div class="col-md-3 mb-4 text-center">
        <b class="card-title">Pending</b><br>
        <h3 class="text text-light"><?php echo "$BelumDihubungi"; ?></h3>
    </div>
    <div class="col-md-3 mb-4 text-center">
        <b class="card-title">Distribusi CS</b><br>
        <h3 class="text text-light"><?php echo "$KontakCs"; ?></h3>
    </div>
</div>