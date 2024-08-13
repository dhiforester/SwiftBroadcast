<?php
    //Koneksi
    date_default_timezone_set('Asia/Jakarta');
    include "../../_Config/Connection.php";
    include "../../_Config/GlobalFunction.php";
    include "../../_Config/SettingGeneral.php";
    include "../../_Config/Session.php";
    if(empty($SessionIdAkses)){
        echo '<div class="row">';
        echo '  <div class="col-md-12 mb-3 text-center">';
        echo '      <small class="text-danger">Sesi Akses Sudah Berakhir, Silahkan Login Ulang</small>';
        echo '  </div>';
        echo '</div>';
    }else{
        //Tangkap id_kontak
        if(empty($_POST['id_kontak'])){
            echo '<div class="row">';
            echo '  <div class="col-md-12 mb-3 text-center">';
            echo '      <small class="text-danger">ID Anggota Tidak Boleh Kosong!</small>';
            echo '  </div>';
            echo '</div>';
        }else{
            $id_kontak=$_POST['id_kontak'];
            $id_kontak=validateAndSanitizeInput($id_kontak);
            //Buka Informasi
            $datetime_import=GetDetailData($Conn,'kontak','id_kontak',$id_kontak,'datetime_import');
            $id_anggota=GetDetailData($Conn,'kontak','id_kontak',$id_kontak,'id_anggota');
            $email=GetDetailData($Conn,'kontak','id_kontak',$id_kontak,'email');
            $nama=GetDetailData($Conn,'kontak','id_kontak',$id_kontak,'nama');
            $kontak=GetDetailData($Conn,'kontak','id_kontak',$id_kontak,'kontak');
            $sumber=GetDetailData($Conn,'kontak','id_kontak',$id_kontak,'sumber');
            $sudah_dihubungi=GetDetailData($Conn,'kontak','id_kontak',$id_kontak,'sudah_dihubungi');
?>
    <input type="hidden" name="id_kontak" value="<?php echo $id_kontak; ?>">
    <div class="row mb-3">
        <div class="col col-md-4">
            <label for="nama_edit">Nama</label>
        </div>
        <div class="col-md-8">
            <input type="text" name="nama" id="nama_edit" class="form-control" value="<?php echo $nama; ?>">
        </div>
    </div>
    <div class="row mb-3">
        <div class="col col-md-4">
            <label for="email_edit">Email</label>
        </div>
        <div class="col-md-8">
            <input type="email" name="email" id="email_edit" class="form-control" placeholder="email@domain.com" value="<?php echo $email; ?>">
        </div>
    </div>
    <div class="row mb-3">
        <div class="col col-md-4">
            <label for="kontak_edit">Kontak</label>
        </div>
        <div class="col-md-8">
            <input type="text" name="kontak" id="kontak_edit" class="form-control" placeholder="62" value="<?php echo $kontak; ?>">
        </div>
    </div>
    <div class="row mb-3">
        <div class="col col-md-4">
            <label for="sumber_edit">Sumber</label>
        </div>
        <div class="col-md-8">
            <input type="text" name="sumber" id="sumber_edit" class="form-control" list="list_sumber" value="<?php echo $sumber; ?>">
            <datalist list="list_sumber">
                <?php
                    $query = mysqli_query($Conn, "SELECT DISTINCT sumber FROM kontak ORDER BY sumber ASC");
                    while ($data = mysqli_fetch_array($query)) {
                        $sumber= $data['sumber'];
                        echo '<option value="'.$sumber.'">';
                    }
                ?>
            </datalist>
        </div>
    </div>
    <div class="row mb-3">
        <div class="col col-md-4">
            <label for="sudah_dihubungi_edit">Status Dihubungi</label>
        </div>
        <div class="col-md-8">
            <select name="sudah_dihubungi" id="sudah_dihubungi_edit" class="form-control">
                <option <?php if($sudah_dihubungi=="1"){echo "selected";} ?> value="1">Sudah</option>
                <option <?php if(empty($sudah_dihubungi)){echo "selected";} ?> value="0">Belum</option>
            </select>
        </div>
    </div>
    <div class="row mb-3">
        <div class="col-md-12 text-center">
            <small class="credit">
                <code class="text-primary">Pastikan data kontak yang anda input sudah benar</code>
            </small>
        </div>
    </div>
    <script>
        //Validasi Kontak Hanya Boleh Angka
        $('#kontak_edit').keypress(function(event) {
            // Hanya mengizinkan angka (0-9) dan tombol kontrol seperti backspace
            var charCode = (event.which) ? event.which : event.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        });
    </script>
<?php 
        }
    }
?>