<?php 
    if(empty($_GET['Page'])){
        echo '<script type="text/javascript" src="_Page/Dashboard/Dashboard.js"></script>';
    }else{
        $Page=$_GET['Page'];
        if($Page=="MyProfile"){
            echo '<script type="text/javascript" src="_Page/MyProfile/MyProfile.js"></script>';
        }
        if($Page=="AksesFitur"){
            echo '<script type="text/javascript" src="_Page/AksesFitur/AksesFitur.js"></script>';
        }
        if($Page=="AksesEntitas"){
            echo '<script type="text/javascript" src="_Page/AksesEntitas/AksesEntitas.js"></script>';
        }
        if($Page=="Akses"){
            echo '<script type="text/javascript" src="_Page/Akses/Akses.js"></script>';
        }
        if($Page=="Supervisi"){
            echo '<script type="text/javascript" src="_Page/Supervisi/Supervisi.js"></script>';
        }
        if($Page=="Anggota"){
            echo '<script type="text/javascript" src="_Page/Anggota/Anggota.js"></script>';
        }
        if($Page=="Transaksi"){
            echo '<script type="text/javascript" src="_Page/Transaksi/Transaksi.js"></script>';
        }
        if($Page=="SettingGeneral"){
            echo '<script type="text/javascript" src="_Page/SettingGeneral/SettingGeneral.js"></script>';
        }
        if($Page=="SettingEmail"){
            echo '<script type="text/javascript" src="_Page/SettingService/SettingService.js"></script>';
        }
        if($Page=="Aktivitas"){
            echo '<script type="text/javascript" src="_Page/Aktivitas/Aktivitas.js"></script>';
        }
        if($Page=="Help"){
            echo '<script type="text/javascript" src="_Page/Help/Help.js"></script>';
        }
    }
    //default Login
    echo '<script type="text/javascript" src="_Page/Pendaftaran/Pendaftaran.js"></script>';
    echo '<script type="text/javascript" src="_Page/Login/Login.js"></script>';
    echo '<script type="text/javascript" src="_Page/ResetPassword/ResetPassword.js"></script>';
?>