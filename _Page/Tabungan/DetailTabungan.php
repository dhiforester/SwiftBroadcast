<section class="section dashboard">
    <?php
        if(empty($SessionIdAkses)){
            echo '<div class="row mb-3">';
            echo '  <div class="col-md-12">';
            echo '      <div class="alert alert-danger alert-dismissible fade show" role="alert">';
            echo '          Sesi Akses Sudah Berakhir, Silahkan Login Ulang Terlebih Dulu.';
            echo '          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>';
            echo '      </div>';
            echo '  </div>';
            echo '</div>';
        }else{
            //Tangkap id_simpanan
            if(empty($_GET['id'])){
                echo '<div class="row mb-3">';
                echo '  <div class="col-md-12">';
                echo '      <div class="alert alert-danger alert-dismissible fade show" role="alert">';
                echo '          ID Simpanan Tidak Boleh Kosong.';
                echo '          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>';
                echo '      </div>';
                echo '  </div>';
                echo '</div>';
            }else{
                $id_simpanan=$_GET['id'];
                //Bersihkan Variabel
                $id_simpanan=validateAndSanitizeInput($id_simpanan);
                $id_anggota=GetDetailData($Conn,'simpanan','id_simpanan',$id_simpanan,'id_anggota');
                if(empty($id_anggota)){
                    echo '<div class="row mb-3">';
                    echo '  <div class="col-md-12">';
                    echo '      <div class="alert alert-danger alert-dismissible fade show" role="alert">';
                    echo '          ID Simpanan Tidak Valid Atau Tidak Ditemukan Pada Database.';
                    echo '          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>';
                    echo '      </div>';
                    echo '  </div>';
                    echo '</div>';
                }else{
    ?>
        <input type="hidden" id="GetIdSimpanan" value="<?php echo $id_simpanan; ?>">
        <div class="row mb-3">
            <div class="col-md-12">
                <?php
                    echo '<div class="alert alert-info alert-dismissible fade show" role="alert">';
                    echo '  Berikut adalah halaman detail simpanan. Gunakan navigasi pada Tab Card yang ada pada halaman untuk berganti tampilan.';
                    echo '  Pada halaman ini anda bisa mengelola data uraian simpanan dan jurnal keuangan yang terhubung.';
                    echo '  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>';
                    echo '</div>';
                ?>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-md-10 mb-3">
                                <b class="card-title">
                                    <i class="bi bi-info-circle"></i> Detail Simpanan
                                </b>
                            </div>
                            <div class="col-md-2 mb-3">
                                <a href="index.php?Page=Tabungan" class="btn btn-md btn-block btn-dark btn-rounded">
                                    <i class="bi bi-chevron-left"></i> Kembali
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body" id="MenampilkanDetailSimpanan">
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-md-10">
                                <b class="card-title">Jurnal Keuangan Simpanan Anggota</b>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12 mb-3">
                                <div class="tab-content pt-2" id="borderedTabJustifiedContent">
                                    <div class="tab-pane fade active show" id="bordered-justified-home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-12" id="MenampilkanAngsuranPinjaman">
                                                <!-- Menampilkan Angsuran Disini -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="bordered-justified-profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="row">
                                            <div class="col-md-12" id="MenampilkanJurnalPinjaman">
                                                <!-- Menampilkan Jurnal Disini -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php
                }
            }
        }
    ?>
</section>