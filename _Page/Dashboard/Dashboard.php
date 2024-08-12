<?php
    if($SessionAkses=="Admin"){
        include "_Page/Dashboard/DashboardAdmin.php";
    }else{
        if($SessionAkses=="Supervisi"){
            include "_Page/Dashboard/DashboardSupervisi.php";
        }else{
            include "_Page/Dashboard/DashboardAnggota.php";
        }
    }
?>