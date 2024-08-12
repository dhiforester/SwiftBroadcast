<!DOCTYPE html>
<html lang="en">
    <head>
        <?php
            //Koneksi
            include "_Config/Connection.php";
            include "_Config/SettingGeneral.php";
            $Page="Login";
            include "_Partial/JsPlugin.php";
            if(!empty($_GET['Notifikasi'])){
                $Notifikasi=$_GET['Notifikasi'];
            }else{
                $Notifikasi="";
            }
        ?>
    </head>
    <body>
        <main class="login_background">
            <div class="container">
                <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
                                <div class="card mb-3">
                                    <div class="card-body">
                                        <div class="pb-2">
                                            <h5 class="card-title text-center pb-0 fs-4">
                                                <a href="">Form Login</a>
                                            </h5>
                                            <p class="text-center small">Masukan Email Dan Password Untuk Melakukan Login</p>
                                            <?php
                                                if($Notifikasi=="Berhasil"){
                                                    echo '<div class="alert alert-success alert-dismissible fade show" role="alert">';
                                                    echo '  Pendaftaran <b>Berhasil</b>, silahkan lakukan validasi email pada pesan yang kami kirim ke email anda. ';
                                                    echo '  Apabila anda tidak menerima email, kunjungi  <a href="UlangiVerifikasiEmail.php">halaman berikut</a>';
                                                    echo '  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>';
                                                    echo '</div>';
                                                }else{
                                                    if($Notifikasi=="KirimUlangValidasiEmailBerhasil"){
                                                        echo '<div class="alert alert-success alert-dismissible fade show" role="alert">';
                                                        echo '  Kami telah mengirimkan ulang kode validasi email ke alamat yang anda input. ';
                                                        echo '  Silahkan cek kembali inbox email anda.</a>';
                                                        echo '  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>';
                                                        echo '</div>';
                                                    }else{
                                                        
                                                    }
                                                }
                                            ?>
                                        </div>
                                        <form action="javascript:void(0);" class="row g-3" id="ProsesLogin">
                                            <div class="col-12">
                                                <label for="mode_akses" class="form-label">Level Akses</label>
                                                
                                                <div class="input-group has-validation">
                                                    <span class="input-group-text" id="inputGroupPrepend">
                                                        <i class="bi bi-person"></i>
                                                    </span>
                                                    <select name="mode_akses" id="mode_akses" class="form-control" required>
                                                        <option value="Admin">Admin</option>
                                                        <option value="Supervisi">Supervisi</option>
                                                        <option value="Anggota">CS</option>
                                                    </select>
                                                    <div class="invalid-feedback">Please enter your username.</div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <label for="email" class="form-label">Email</label>
                                                <div class="input-group has-validation">
                                                    <span class="input-group-text" id="inputGroupPrepend">
                                                        <i class="bi bi-envelope"></i>
                                                    </span>
                                                    <input type="email" name="email" class="form-control" id="email" required>
                                                    <div class="invalid-feedback">Please enter your username.</div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <label for="password" class="form-label">Password</label>
                                                <div class="input-group has-validation">
                                                    <span class="input-group-text" id="inputGroupPrepend"><i class="bi bi-key"></i></span>
                                                    <input type="password" name="password" class="form-control" id="password" required>
                                                    <div class="invalid-feedback">Please enter your password.</div>
                                                </div>
                                                <small class="credit">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="Tampilkan" id="TampilkanPassword2" name="TampilkanPassword2">
                                                        <label class="form-check-label" for="TampilkanPassword2">
                                                            Tampilkan Password
                                                        </label>
                                                    </div>
                                                </small>
                                            </div>
                                            <div class="col-12">
                                                Pastikan email dan password sudah benar.
                                            </div>
                                            <div class="col-12" id="NotifikasiLogin"></div>
                                            <div class="col-12">
                                                <button class="btn btn-lg btn-primary w-100" type="submit">Login</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                        // include "_Partial/Copyright.php";
                    ?>
                </section>
            </div>
    </main>
        <?php
            include "_Partial/BackToTop.php";
            include "_Partial/FooterJs.php";
            include "_Partial/RoutingJs.php";
        ?>
        <script>
            //Kondisi saat tampilkan password
            $('#TampilkanPassword2').click(function(){
                if($(this).is(':checked')){
                    $('#password').attr('type','text');
                }else{
                    $('#password').attr('type','password');
                }
            });
        </script>
    </body>

</html>