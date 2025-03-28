<?php
    //Koneksi
    include "../../_Config/Connection.php";
    //Kontak yang sudah dihubungi
    $JumlahKontak = mysqli_num_rows(mysqli_query($Conn, "SELECT id_kontak FROM kontak"));
    $JumlahPesanTerkirim = mysqli_num_rows(mysqli_query($Conn, "SELECT id_pesan_terkirim FROM pesan_terkirim"));
    $ConversionRate=($JumlahPesanTerkirim/$JumlahKontak)*100;
    $ConversionRate=round($ConversionRate);
    //Persentase
    $Persentase=100;
    $data = [
        'labels' => ['Conversion Rate', 'Persentase'],
        'series' => [$ConversionRate, $Persentase]
    ];
    echo json_encode($data);
?>
