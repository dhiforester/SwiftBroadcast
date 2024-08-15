<?php
    //Koneksi
    include "../../_Config/Connection.php";
    include "../../_Config/GlobalFunction.php";
    include "../../_Config/Session.php";
    date_default_timezone_set('Asia/Jakarta');
    //Time Now Tmp
    $now=date('Y-m-d H:i:s');
    if(empty($SessionIdAkses)){
        echo '<small class="text-danger">Sesi Akses Sudah Berakhir, Silahkan Login Ulang</small>';
    }else{
        if(empty($_POST['kode'])){
            echo '<small class="text-danger">Kode Barang Tidak Boleh Kosong!</small>';
        }else{
            if(empty($_POST['nama'])){
                echo '<small class="text-danger">Nama barang Tidak Boleh Kosong!</small>';
            }else{
                if(empty($_POST['kategori'])){
                    echo '<small class="text-danger">Kategori Barang Tidak Boleh Kosong!</small>';
                }else{
                    if(empty($_POST['satuan'])){
                        echo '<small class="text-danger">Satuan Tidak Boleh Kosong!</small>';
                    }else{
                        $kode=$_POST['kode'];
                        $nama=$_POST['nama'];
                        $kategori=$_POST['kategori'];
                        $satuan=$_POST['satuan'];
                        if(empty($_POST['harga'])){
                            $harga=0;
                        }else{
                            $harga=$_POST['harga'];
                            $harga = str_replace('.', '', $harga);
                        }
                        if(empty($_POST['stok'])){
                            $stok=0;
                        }else{
                            $stok=$_POST['stok'];
                            $stok = str_replace('.', '', $stok);
                        }
                        if(empty($_POST['berat'])){
                            $berat=0;
                        }else{
                            $berat=$_POST['berat'];
                        }
                        //Validasi data duplikat
                        $ValidasiDuplikat=mysqli_num_rows(mysqli_query($Conn, "SELECT*FROM barang WHERE kode='$kode'"));
                        if(!empty($ValidasiDuplikat)){
                            echo '<small class="text-danger">Kode Tersebut sudah ada</small>';
                        }else{
                            //Simpan data
                            $entry="INSERT INTO barang (
                                kode,
                                nama,
                                kategori,
                                satuan,
                                harga,
                                stok,
                                berat,
                                foto
                            ) VALUES (
                                '$kode',
                                '$nama',
                                '$kategori',
                                '$satuan',
                                '$harga',
                                '$stok',
                                '$berat',
                                ''
                            )";
                            $Input=mysqli_query($Conn, $entry);
                            if($Input){
                                $KategoriLog="Barang";
                                $KeteranganLog="Tambah Barang Baru";
                                include "../../_Config/InputLog.php";
                                echo '<small class="text-success" id="NotifikasiTambahBarangBerhasil">Success</small>';
                            }else{
                                echo '<small class="text-danger">Terjadi kesalahan pada saat menyimpan data</small>';
                            }
                        }
                    }
                }
            }
        }
    }
?>