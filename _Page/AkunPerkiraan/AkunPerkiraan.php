<section class="section dashboard">
    <div class="row">
        <div class="col-md-12">
            <?php
                echo '<div class="alert alert-info alert-dismissible fade show" role="alert">';
                echo '  Berikut ini adalah halaman untuk mengelola data akun perkiraan';
                echo '  Anda bisa menambahkan, menghapus dan merubah data akun perkiraan secara dinamis.';
                echo '  Akun perkiraan disusun berdasarkan level yang berlaku pada masing-masing kebijakan keuangan perusahaan.';
                echo '  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>';
                echo '</div>';
            ?>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col-md-10 mt-3">
                        </div>
                        <div class="col-md-2 text-center mt-3">
                            <button type="button" class="btn btn-md btn-primary btn-block btn-rounded" data-bs-toggle="modal" data-bs-target="#ModalTambahAkunPerkiraan">
                                <i class="bi bi-plus"></i> Akun Utama
                            </button>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row mb-3">
                        <div class="col-md-12" id="MenampilkanTabelAkunPerkiraan">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>