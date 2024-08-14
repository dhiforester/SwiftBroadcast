<?php
    //Jumlah Kontak
    $JumlahKontak = mysqli_num_rows(mysqli_query($Conn, "SELECT id_kontak FROM kontak"));
    $JumlahkontakFormat = "" . number_format($JumlahKontak,0,',','.');
    //Jumlah Anggota (CS)
    $JumlahAnggota = mysqli_num_rows(mysqli_query($Conn, "SELECT id_anggota FROM anggota WHERE status='Aktif'"));
    $JumlahAnggotaFormat = "" . number_format($JumlahAnggota,0,',','.');
    //Jumlah Pesan Terkirim
    $JumlahPesanTerkirim = mysqli_num_rows(mysqli_query($Conn, "SELECT id_pesan_terkirim FROM pesan_terkirim"));
    $JumlahPesanTerkirimFormat = "" . number_format($JumlahPesanTerkirim,0,',','.');
    //Jumlah transaksi Selesai
    $JumlahTransaksiSelesai = mysqli_num_rows(mysqli_query($Conn, "SELECT id_transaksi FROM transaksi WHERE status_pengiriman='Selesai'"));
    $JumlahTransaksiSelesaiFormat = "" . number_format($JumlahTransaksiSelesai,0,',','.');
    include "_Page/Dashboard/ProsesHitungTransaksi.php";
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
                            <div id="chart"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <b class="card-title">Customer Service</b><br>
                            <small class="credit">
                                <code class="text text-grayish">
                                    5 Record Data Customer Service Terbaru.
                                </code>
                            </small>
                            <div class="activity mt-4">
                                <?php
                                    $RowAnggota = mysqli_num_rows(mysqli_query($Conn, "SELECT*FROM anggota"));
                                    if(empty($RowAnggota)){
                                        echo '<div class="activity-item d-flex">';
                                        echo '  Data Customer Service (CS) Belum Ada';
                                        echo '</div>';
                                    }else{
                                        //Arraykan Simpanan
                                        $QryAnggota = mysqli_query($Conn, "SELECT*FROM anggota ORDER BY id_anggota DESC LIMIT 5");
                                        while ($DataAnggota = mysqli_fetch_array($QryAnggota)) {
                                            $id_anggota= $DataAnggota['id_anggota'];
                                            $nama= $DataAnggota['nama'];
                                            $EmailAnggota= $DataAnggota['email'];
                                            echo '<div class="activity-item d-flex">';
                                            echo '  <i class="bi bi-circle-fill activity-badge text-success align-self-start"></i>';
                                            echo '  <div class="activity-content">';
                                            echo '      <small class="credit">'.$nama.'</small><br><small class="credit"><code class="text text-grayish">'.$EmailAnggota.'</code></small>';
                                            echo '  </div>';
                                            echo '</div>';
                                        }
                                    }
                                ?>
                                
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-12">
                                    <a href="index.php?Page=Anggota">
                                        <small>
                                            Lihat Selengapnya <i class="bi bi-three-dots"></i>
                                        </small>
                                    </a>
                                </div>
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
                                    $RowSimpanan = mysqli_num_rows(mysqli_query($Conn, "SELECT*FROM kontak"));
                                    if(empty($RowSimpanan)){
                                        echo '<div class="activity-item d-flex">';
                                        echo '  Data Kontak Belum Ada';
                                        echo '</div>';
                                    }else{
                                        //Arraykan Kontak
                                        $QrySimpanan = mysqli_query($Conn, "SELECT*FROM kontak ORDER BY id_kontak DESC LIMIT 5");
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
                            <div class="row mt-3">
                                <div class="col-md-12">
                                    <a href="index.php?Page=Kontak">
                                        <small>
                                            Lihat Selengapnya <i class="bi bi-three-dots"></i>
                                        </small>
                                    </a>
                                </div>
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
                                    $RowTransaksi = mysqli_num_rows(mysqli_query($Conn, "SELECT*FROM transaksi"));
                                    if(empty($RowTransaksi)){
                                        echo '<div class="activity-item d-flex">';
                                        echo '  Data Transaksi Belum Ada';
                                        echo '</div>';
                                    }else{
                                        //Arraykan Transaksi
                                        $QryTransaksi = mysqli_query($Conn, "SELECT*FROM transaksi ORDER BY id_transaksi DESC LIMIT 5");
                                        while ($DataTransaksi = mysqli_fetch_array($QryTransaksi)) {
                                            $id_transaksi= $DataTransaksi['id_transaksi'];
                                            $id_kontak= $DataTransaksi['id_kontak'];
                                            $datetime_transaksi= $DataTransaksi['datetime_transaksi'];
                                            $jumlah= $DataTransaksi['jumlah'];
                                            $jumlah_format = "Rp " . number_format($jumlah,0,',','.');
                                            $strtotime_transaksi= strtotime($datetime_transaksi);
                                            $datetime_transaksi_format=date('d/m/y', $strtotime_transaksi);
                                            //Buka Kontak
                                            $kontak_transaksi=GetDetailData($Conn,'kontak','id_kontak',$id_kontak,'kontak');
                                            echo '<div class="activity-item d-flex">';
                                            echo '  <div class="activite-label"><code class="text-info">'.$tanggal_pinjaman_format.'</code></div>';
                                            echo '  <i class="bi bi-circle-fill activity-badge text-success align-self-start"></i>';
                                            echo '  <div class="activity-content">';
                                            echo '      <small class="credit">'.$kontak_transaksi.'</small><br><small class="credit"><code class="text text-grayish">'.$jumlah_format.'</code></small>';
                                            echo '  </div>';
                                            echo '</div>';
                                        }
                                    }
                                ?>
                                
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-12">
                                    <a href="index.php?Page=Transaksi">
                                        <small>
                                            Lihat Selengapnya <i class="bi bi-three-dots"></i>
                                        </small>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
