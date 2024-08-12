<section class="section dashboard">
    <div class="row">
        <div class="col-md-12">
            <?php
                echo '<div class="alert alert-info alert-dismissible fade show" role="alert">';
                echo '  Berikut ini adalah rekapitulasi data keluar masuk anggota.';
                echo '  Anda bisa menampilkan data berdasarkan periode tertentu yang diinginkan.<br>';
                echo '  Gunakan filter untuk mengelompokan data tersebut dengan mudah.';
                echo '  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>';
                echo '</div>';
            ?>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">
                    <form action="javascript:void(0);" id="ProsesBatas">
                        <div class="row">
                            <div class="col-md-10 mb-3">
                                <b class="card-title">Rekapitulasi</b>
                            </div>
                            <div class="col-md-2 mb-3">
                                <a class="btn btn-md btn-outline-dark btn-rounded btn-block" href="javascript:void(0);" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="bi bi-three-dots"></i> Opsi Lanjutan
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow" style="">
                                    <li>
                                        <a class="dropdown-item" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#ModalFilter">
                                            <i class="bi bi-funnel"></i> Filter
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#ModalExport">
                                            <i class="bi bi-cloud-arrow-down"></i> Export
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="card-body" id="MenampilkanTabelAnggotaKeluarMasuk">

                </div>
            </div>
        </div>
    </div>
</section>