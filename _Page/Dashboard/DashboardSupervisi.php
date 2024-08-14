<?php
    //Jumlah Kontak
    $JumlahKontak = mysqli_num_rows(mysqli_query($Conn, "SELECT id_kontak FROM kontak WHERE id_anggota='$SessionIdAkses'"));
    $JumlahkontakFormat = "" . number_format($JumlahKontak,0,',','.');
    //Jumlah Pesan Terkirim
    $JumlahPesanTerkirim = mysqli_num_rows(mysqli_query($Conn, "SELECT id_pesan_terkirim FROM pesan_terkirim WHERE id_anggota='$SessionIdAkses'"));
    $JumlahPesanTerkirimFormat = "" . number_format($JumlahPesanTerkirim,0,',','.');
    //Jumlah transaksi Selesai
    $JumlahTransaksiSelesai = mysqli_num_rows(mysqli_query($Conn, "SELECT id_transaksi FROM transaksi WHERE id_anggota='$SessionIdAkses'"));
    $JumlahTransaksiSelesaiFormat = "" . number_format($JumlahTransaksiSelesai,0,',','.');
    include "_Page/Dashboard/ProsesHitungTransaksiAnggota.php";
?>
<section class="section dashboard">
    <div class="row">
        <div class="col-lg-12">
            <div class="row">
                <div class="col-xxl-4 col-md-6">
                    <div class="card info-card sales-card">
                        <div class="card-body">
                            <h5 class="card-title">Kontak</h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-bookmark"></i>
                                </div>
                                <div class="ps-3">
                                    <?php
                                        echo '  <span class="text-muted small pt-1 fw-bold">'.$JumlahkontakFormat.'</span><br>';
                                        echo '  <span class="text-muted small pt-2 ps-1">Record</span>';
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-4 col-md-6">
                    <div class="card info-card customers-card">
                        <div class="card-body">
                            <h5 class="card-title">Pesan Terkirim</h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-envelope-paper"></i>
                                </div>
                                <div class="ps-3">
                                    <?php
                                        echo '  <span class="text-muted small pt-1 fw-bold">'.$JumlahPesanTerkirimFormat.'</span><br>';
                                        echo '  <span class="text-muted small pt-2 ps-1">Rp/IDR</span>';
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-4 col-md-6">
                    <div class="card info-card blue-card">
                        <div class="card-body">
                            <h5 class="card-title">Transaksi (Closing)</h5>
                            <div class="d-flex align-items-center">
                                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                    <i class="bi bi-cart-check"></i>
                                </div>
                                <div class="ps-3">
                                    <?php
                                        echo '  <span class="text-muted small pt-1 fw-bold">'.$JumlahTransaksiSelesaiFormat.'</span><br>';
                                        echo '  <span class="text-muted small pt-2 ps-1">Record</span>';
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Reports -->
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <b class="card-title">
                                Broadcast/Closing <span class="text-grayish">(<?php echo date ('Y'); ?>)</span>
                            </b>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title" id="NamaTitleData"></h5>
                            <div id="chart_anggota"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <b class="card-title">Broadcast Terkirim</b><br>
                            <small class="credit">
                                <code class="text text-grayish">
                                    5 Record Data Broadcast Terbaru.
                                </code>
                            </small>
                            <div class="activity mt-4">
                                <?php
                                    $RowPesan = mysqli_num_rows(mysqli_query($Conn, "SELECT*FROM pesan_terkirim WHERE id_anggota='$SessionIdAkses'"));
                                    if(empty($RowPesan)){
                                        echo '<div class="activity-item d-flex">';
                                        echo '  Belum Ada Pesan Broadcast Yang Dikirim';
                                        echo '</div>';
                                    }else{
                                        //Arraykan Pesan
                                        $QryPesan = mysqli_query($Conn, "SELECT*FROM pesan_terkirim WHERE id_anggota='$SessionIdAkses' ORDER BY id_pesan_terkirim DESC LIMIT 5");
                                        while ($DataPesan = mysqli_fetch_array($QryPesan)) {
                                            $id_kontak= $DataPesan['id_kontak'];
                                            $datetime_pesan= $DataPesan['datetime_pesan'];
                                            //Rincian Kontak
                                            $nama_kontak=GetDetailData($Conn,'kontak','id_kontak',$id_kontak,'nama');
                                            $no_kontak=GetDetailData($Conn,'kontak','id_kontak',$id_kontak,'kontak');
                                            $strtotiem_pesan= strtotime($datetime_pesan);
                                            $datetime_pesan=date('d/m/y', $strtotiem_pesan);
                                            echo '<div class="activity-item d-flex">';
                                            echo '  <div class="activite-label"><code class="text-info">'.$datetime_pesan.'</code></div>';
                                            echo '  <i class="bi bi-circle-fill activity-badge text-success align-self-start"></i>';
                                            echo '  <div class="activity-content">';
                                            echo '      <small class="credit">'.$nama_kontak.'</small><br><small class="credit"><code class="text text-grayish">'.$no_kontak.'</code></small>';
                                            echo '  </div>';
                                            echo '</div>';
                                        }
                                    }
                                ?>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <b class="card-title">Kontak</b><br>
                            <small class="credit">
                                <code class="text text-grayish">
                                    5 Record Data Kontak Terbaru.
                                </code>
                            </small>
                            <div class="activity mt-4">
                                <?php
                                    $RowSimpanan = mysqli_num_rows(mysqli_query($Conn, "SELECT*FROM kontak WHERE id_anggota='$SessionIdAkses'"));
                                    if(empty($RowSimpanan)){
                                        echo '<div class="activity-item d-flex">';
                                        echo '  Data Kontak Belum Ada';
                                        echo '</div>';
                                    }else{
                                        //Arraykan Kontak
                                        $QrySimpanan = mysqli_query($Conn, "SELECT*FROM kontak WHERE id_anggota='$SessionIdAkses' ORDER BY id_kontak DESC LIMIT 5");
                                        while ($DataSimpanan = mysqli_fetch_array($QrySimpanan)) {
                                            $datetime_import= $DataSimpanan['datetime_import'];
                                            $nama= $DataSimpanan['nama'];
                                            $kontak= $DataSimpanan['kontak'];
                                            $strtotiem_kontak= strtotime($datetime_import);
                                            $datetime_import_format=date('d/m/y', $strtotiem_kontak);
                                            echo '<div class="activity-item d-flex">';
                                            echo '  <div class="activite-label"><code class="text-info">'.$datetime_import_format.'</code></div>';
                                            echo '  <i class="bi bi-circle-fill activity-badge text-success align-self-start"></i>';
                                            echo '  <div class="activity-content">';
                                            echo '      <small class="credit">'.$nama.'</small><br><small class="credit"><code class="text text-grayish">'.$kontak.'</code></small>';
                                            echo '  </div>';
                                            echo '</div>';
                                        }
                                    }
                                ?>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <b class="card-title">Transaksi</b><br>
                            <small class="credit">
                                <code class="text text-grayish">
                                    5 Record Data Transaksi Terbaru.
                                </code>
                            </small>
                            <div class="activity mt-4">
                                <?php
                                    $RowTransaksi = mysqli_num_rows(mysqli_query($Conn, "SELECT*FROM transaksi WHERE id_anggota='$SessionIdAkses'"));
                                    if(empty($RowTransaksi)){
                                        echo '<div class="activity-item d-flex">';
                                        echo '  Data Transaksi Belum Ada';
                                        echo '</div>';
                                    }else{
                                        //Arraykan Transaksi
                                        $QryTransaksi = mysqli_query($Conn, "SELECT*FROM transaksi WHERE id_anggota='$SessionIdAkses' ORDER BY id_transaksi DESC LIMIT 5");
                                        while ($DataTransaksi = mysqli_fetch_array($QryTransaksi)) {
                                            $id_transaksi= $DataTransaksi['id_transaksi'];
                                            $uuid_transaksi= $DataTransaksi['uuid_transaksi'];
                                            $id_kontak= $DataTransaksi['id_kontak'];
                                            $datetime_transaksi= $DataTransaksi['datetime_transaksi'];
                                            $status_pembayaran= $DataTransaksi['status_pembayaran'];
                                            $status_pengiriman= $DataTransaksi['status_pengiriman'];
                                            // $PembayaranFormat = "" . number_format($pembayaran,0,',','.');
                                            // $JumlahFormat = "Rp " . number_format($jumlah,0,',','.');
                                            //Format Tanggal
                                            $strtotime=strtotime($datetime_transaksi);
                                            $TanggalFormat=date('d/m/Y H:i:s T', $strtotime);
                                            //Bukka Kontak
                                            $email=GetDetailData($Conn,'kontak','id_kontak',$id_kontak,'email');
                                            $nama=GetDetailData($Conn,'kontak','id_kontak',$id_kontak,'nama');
                                            $kontak_transaksi=GetDetailData($Conn,'kontak','id_kontak',$id_kontak,'kontak');
                                            echo '<div class="activity-item d-flex">';
                                            echo '  <div class="activite-label"><code class="text-info">'.$TanggalFormat.'</code></div>';
                                            echo '  <i class="bi bi-circle-fill activity-badge text-success align-self-start"></i>';
                                            echo '  <div class="activity-content">';
                                            echo '      <small class="credit">'.$nama.'</small><br><small class="credit"><code class="text text-grayish">'.$status_pengiriman.'</code></small>';
                                            echo '  </div>';
                                            echo '</div>';
                                        }
                                    }
                                ?>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
