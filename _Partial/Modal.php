<?php
    include "_Page/Logout/ModalLogout.php";
    if(empty($_GET['Page'])){
        $Page="";
    }else{
        $Page=$_GET['Page'];
        if($Page=="MyProfile"){
            include "_Page/MyProfile/ModalMyProfile.php";
        }
        if($Page=="AksesFitur"){
            include "_Page/AksesFitur/ModalAksesFitur.php";
        }
        if($Page=="AksesEntitas"){
            include "_Page/AksesEntitas/ModalAksesEntitas.php";
        }
        if($Page=="Akses"){
            include "_Page/Akses/ModalAkses.php";
        }
        if($Page=="Supervisi"){
            include "_Page/Supervisi/ModalSupervisi.php";
        }
        if($Page=="Anggota"){
            include "_Page/Anggota/ModalAnggota.php";
        }
        if($Page=="Kontak"){
            include "_Page/Kontak/ModalKontak.php";
        }
        if($Page=="DistribusiKontak"){
            include "_Page/DistribusiKontak/ModalDistribusiKontak.php";
        }
        if($Page=="Transaksi"){
            include "_Page/Transaksi/ModalTransaksi.php";
        }
        if($Page=="SettingGeneral"){
            include "_Page/SettingGeneral/ModalSettingGeneral.php";
        }
        if($Page=="SettingEmail"){
            include "_Page/SettingService/ModalSettingService.php";
        }
        if($Page=="Aktivitas"){
            include "_Page/Aktivitas/ModalAktivitas.php";
        }
        //Anggota
        if($Page=="KontakAnggota"){
            include "_Page/KontakAnggota/ModalKontakAnggota.php";
        }
        if($Page=="TransaksiAnggota"){
            include "_Page/TransaksiAnggota/ModalTransaksiAnggota.php";
        }
        if($Page=="Help"){
            include "_Page/Help/ModalHelp.php";
        }
    }
?>