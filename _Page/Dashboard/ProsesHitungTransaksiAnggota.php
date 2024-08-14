<?php
    date_default_timezone_set('Asia/Jakarta');
    $a = 1;
    $b = 12;
    $data = [];
    $tahun = date('Y'); // Ambil tahun saat ini
    for ($i = $a; $i <= $b; $i++) {
        // Zero padding
        $i = sprintf("%02d", $i);
        $WaktuPencarian = "$tahun-$i";
        $WaktuFormating = "$tahun-$i-01";
        $Waktu = strtotime($WaktuFormating);
        $Waktu = date('F', $Waktu);

        // Jumlah Pesan
        $JumlahPesanTerkirim = mysqli_num_rows(mysqli_query($Conn, "SELECT id_pesan_terkirim FROM pesan_terkirim WHERE (id_anggota='$SessionIdAkses') AND (datetime_pesan LIKE '%$WaktuPencarian%')"));

        // Jumlah Transaksi
        $JumlahTransaksiSelesai = mysqli_num_rows(mysqli_query($Conn, "SELECT id_transaksi FROM transaksi WHERE (id_anggota='$SessionIdAkses') AND (datetime_transaksi LIKE '%$WaktuPencarian%')"));

        $data[] = array(
            'x' => $Waktu,
            'yPesan' => $JumlahPesanTerkirim,
            'yTransaksi' => $JumlahTransaksiSelesai
        );
    }

    $json = json_encode($data, JSON_PRETTY_PRINT);
    if (file_put_contents("_Page/Dashboard/GrafikTransaksiAnggota.json", $json)) {
        
    } else {
        echo '<small class="text-danger">Gagal Membuat File JSON</small>';
    }
?>
