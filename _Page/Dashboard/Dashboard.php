<?php
    if($SessionAkses=="Admin"){
        include "_Page/Dashboard/DashboardAdmin.php";
    }else{
        if($SessionAkses=="Supervisi"){
            include "_Page/Dashboard/DashboardSupervisi.php";
        }else{
            if($SessionAkses=="Mitra"){
                include "_Page/Dashboard/DashboardMitra.php";
            }else{
                include "_Page/Dashboard/DashboardAnggota.php";
            }
        }
    }
?>