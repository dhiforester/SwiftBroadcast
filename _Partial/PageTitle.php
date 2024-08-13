<?php
    echo '<div class="pagetitle">';
    //Routing Page Title
    if(empty($_GET['Page'])){
        echo '<h1><a href="">Dashboard</a></h1>';
        echo '<nav>';
        echo '  <ol class="breadcrumb">';
        echo '      <li class="breadcrumb-item active">Dashboard</li>';
        echo '  </ol>';
        echo '</nav>';
    }else{
        if($_GET['Page']=="MyProfile"){
            echo '<h1><a href=""><i class="bi bi-person-circle"></i> Profil Saya</a></h1>';
            echo '<nav>';
            echo '  <ol class="breadcrumb">';
            echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
            echo '      <li class="breadcrumb-item active">Profil Saya</li>';
            echo '  </ol>';
            echo '</nav>';
        }
        if($_GET['Page']=="AksesFitur"){
            echo '<h1><a href=""><i class="bi bi-app"></i> Fitur Aplikasi</a></h1>';
            echo '<nav>';
            echo '  <ol class="breadcrumb">';
            echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
            echo '      <li class="breadcrumb-item active">Fitur Aplikasi</li>';
            echo '  </ol>';
            echo '</nav>';
        }
        if($_GET['Page']=="AksesEntitas"){
            echo '<h1><a href=""><i class="bi bi-stars"></i> Entitas Akses</a></h1>';
            echo '<nav>';
            echo '  <ol class="breadcrumb">';
            echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
            echo '      <li class="breadcrumb-item active">Entitas Akses</li>';
            echo '  </ol>';
            echo '</nav>';
        }
        if($_GET['Page']=="Akses"){
            if(empty($_GET['Sub'])){
                echo '<h1><a href=""><i class="bi bi-person"></i> Akses</a></h1>';
                echo '<nav>';
                echo '  <ol class="breadcrumb">';
                echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
                echo '      <li class="breadcrumb-item active">Akses</li>';
                echo '  </ol>';
                echo '</nav>';
            }else{
                if($_GET['Sub']=="AturIjinAkses"){
                    echo '<h1><i class="bi bi-person-badge"></i> Atur ijin Akses</h1>';
                    echo '<nav>';
                    echo '  <ol class="breadcrumb">';
                    echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
                    echo '      <li class="breadcrumb-item"><a href="index.php?Page=Akses">Akses</a></li>';
                    echo '      <li class="breadcrumb-item active">Atur ijin Akses</li>';
                    echo '  </ol>';
                    echo '</nav>';
                }else{
                    if($_GET['Sub']=="DetailAkses"){
                        echo '<h1><i class="bi bi-person-badge"></i> Detail Akses</h1>';
                        echo '<nav>';
                        echo '  <ol class="breadcrumb">';
                        echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
                        echo '      <li class="breadcrumb-item"><a href="index.php?Page=Akses">Akses</a></li>';
                        echo '      <li class="breadcrumb-item active">Detail Akses</li>';
                        echo '  </ol>';
                        echo '</nav>';
                    }
                }
            }
        }
        if($_GET['Page']=="Supervisi"){
            echo '<h1><a href=""><i class="bi bi-person"></i> Supervisi</a></h1>';
            echo '<nav>';
            echo '  <ol class="breadcrumb">';
            echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
            echo '      <li class="breadcrumb-item active">Anggota</li>';
            echo '  </ol>';
            echo '</nav>';
        }
        if($_GET['Page']=="Anggota"){
            echo '<h1><a href=""><i class="bi bi-people"></i> Customer Service</a></h1>';
            echo '<nav>';
            echo '  <ol class="breadcrumb">';
            echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
            echo '      <li class="breadcrumb-item active">Customer Service</li>';
            echo '  </ol>';
            echo '</nav>';
        }
        if($_GET['Page']=="Kontak"){
            echo '<h1><a href=""><i class="bi bi-telephone"></i> Kontak</a></h1>';
            echo '<nav>';
            echo '  <ol class="breadcrumb">';
            echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
            echo '      <li class="breadcrumb-item active">Kontak</li>';
            echo '  </ol>';
            echo '</nav>';
        }
        if($_GET['Page']=="DistribusiKontak"){
            echo '<h1><a href=""><i class="bi bi-box-arrow-in-down-right"></i> Distribusi Kontak</a></h1>';
            echo '<nav>';
            echo '  <ol class="breadcrumb">';
            echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
            echo '      <li class="breadcrumb-item active">Distribusi Kontak</li>';
            echo '  </ol>';
            echo '</nav>';
        }
        if($_GET['Page']=="Transaksi"){
            if(empty($_GET['Sub'])){
                echo '<h1><a href=""><i class="bi bi-cart-check"></i> Transaksi</a></h1>';
                echo '<nav>';
                echo '  <ol class="breadcrumb">';
                echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
                echo '      <li class="breadcrumb-item active">Transaksi</li>';
                echo '  </ol>';
                echo '</nav>';
            }else{
                $Sub=$_GET['Sub'];
                if($Sub=="TambahTransaksi"){
                    echo '<h1><a href=""><i class="bi bi-cart-check"></i> Transaksi</a></h1>';
                    echo '<nav>';
                    echo '  <ol class="breadcrumb">';
                    echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
                    echo '      <li class="breadcrumb-item"><a href="index.php?Page=Transaksi">Transaksi</a></li>';
                    echo '      <li class="breadcrumb-item active">Tambah Transaksi</li>';
                    echo '  </ol>';
                    echo '</nav>';
                }else{
                    if($Sub=="DetailTransaksi"){
                        echo '<h1><a href=""><i class="bi bi-cart-check"></i> Transaksi</a></h1>';
                        echo '<nav>';
                        echo '  <ol class="breadcrumb">';
                        echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
                        echo '      <li class="breadcrumb-item"><a href="index.php?Page=Transaksi">Transaksi</a></li>';
                        echo '      <li class="breadcrumb-item active">Detail Transaksi</li>';
                        echo '  </ol>';
                        echo '</nav>';
                    }else{
                        if($Sub=="EditTransaksi"){
                            echo '<h1><a href=""><i class="bi bi-cart-check"></i> Transaksi</a></h1>';
                            echo '<nav>';
                            echo '  <ol class="breadcrumb">';
                            echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
                            echo '      <li class="breadcrumb-item"><a href="index.php?Page=Transaksi">Transaksi</a></li>';
                            echo '      <li class="breadcrumb-item active">Edit Transaksi</li>';
                            echo '  </ol>';
                            echo '</nav>';
                        }
                    }
                }
            }
        }
        if($_GET['Page']=="SettingGeneral"){
            echo '<h1><i class="bi bi-gear"></i> Pengaturan Umum</h1>';
            echo '<nav>';
            echo '  <ol class="breadcrumb">';
            echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
            echo '      <li class="breadcrumb-item active">Pengaturan Umum</li>';
            echo '  </ol>';
            echo '</nav>';
        }
        if($_GET['Page']=="SettingEmail"){
            echo '<h1><i class="bi bi-envelope"></i> Pengaturan Email</h1>';
            echo '<nav>';
            echo '  <ol class="breadcrumb">';
            echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
            echo '      <li class="breadcrumb-item active">Pengaturan Email</li>';
            echo '  </ol>';
            echo '</nav>';
        }
        if($_GET['Page']=="Aktivitas"){
            if($_GET['Sub']=="AktivitasUmum"||$_GET['Sub']==""){
                echo '<h1><i class="bi bi-record-btn"></i> Aktivitas Umum</h1>';
                echo '<nav>';
                echo '  <ol class="breadcrumb">';
                echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
                echo '      <li class="breadcrumb-item active">Aktivitas</li>';
                echo '  </ol>';
                echo '</nav>';
            }
            if($_GET['Sub']=="Email"){
                echo '<h1><i class="bi bi-record-btn"></i> Aktivitas Email</h1>';
                echo '<nav>';
                echo '  <ol class="breadcrumb">';
                echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
                echo '      <li class="breadcrumb-item active">Aktivitas</li>';
                echo '  </ol>';
                echo '</nav>';
            }
            if($_GET['Sub']=="APIs"){
                echo '<h1><i class="bi bi-record-btn"></i> Aktivitas APIs</h1>';
                echo '<nav>';
                echo '  <ol class="breadcrumb">';
                echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
                echo '      <li class="breadcrumb-item active">Aktivitas</li>';
                echo '  </ol>';
                echo '</nav>';
            }
        }
        if($_GET['Page']=="Help"){
            echo '<h1><a href=""><i class="bi bi-person-circle"></i> Bantuan</a></h1>';
            echo '<nav>';
            echo '  <ol class="breadcrumb">';
            echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
            echo '      <li class="breadcrumb-item active">Bantuan</li>';
            echo '  </ol>';
            echo '</nav>';
        }
        if($_GET['Page']=="Error"){
            echo '<h1><i class="bi bi-emoji-angry"></i> Error</h1>';
            echo '<nav>';
            echo '  <ol class="breadcrumb">';
            echo '      <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>';
            echo '      <li class="breadcrumb-item active">Error</li>';
            echo '  </ol>';
            echo '</nav>';
        }
    }
    echo '</div>';
?>
