<?php
    if(empty($_GET['Page'])){
        include "_Page/Dashboard/Dashboard.php";
    }else{
        $Page=$_GET['Page'];
        if($Page=="AksesFitur"){
            include "_Page/AksesFitur/AksesFitur.php";
        }
        if($Page=="AksesEntitas"){
            include "_Page/AksesEntitas/AksesEntitas.php";
        }
        if($Page=="Akses"){
            include "_Page/Akses/Akses.php";
        }
        if($Page=="Supervisi"){
            include "_Page/Supervisi/Supervisi.php";
        }
        if($Page=="Anggota"){
            include "_Page/Anggota/Anggota.php";
        }
        if($Page=="Kontak"){
            include "_Page/Kontak/Kontak.php";
        }
        if($Page=="DistribusiKontak"){
            include "_Page/DistribusiKontak/DistribusiKontak.php";
        }
        if($Page=="Transaksi"){
            include "_Page/Transaksi/Transaksi.php";
        }
        if($Page=="SettingGeneral"){
            include "_Page/SettingGeneral/SettingGeneral.php";
        }
        if($Page=="MyProfile"){
            include "_Page/MyProfile/MyProfile.php";
        }
        if($Page=="Help"){
            include "_Page/Help/Help.php";
        }
        if($Page=="SettingEmail"){
            include "_Page/SettingService/SettingService.php";
        }
        if($Page=="Aktivitas"){
            include "_Page/Aktivitas/Aktivitas.php";
        }
        //Anggota
        if($Page=="KontakAnggota"){
            include "_Page/KontakAnggota/KontakAnggota.php";
        }
        if($Page=="Error"){
            include "_Page/Error/Error.php";
        }
    }
?>