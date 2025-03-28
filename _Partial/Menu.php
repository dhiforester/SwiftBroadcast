<?php
    if(empty($_GET['Page'])){
        $PageMenu="";
    }else{
        $PageMenu=$_GET['Page'];
    }
    if(empty($_GET['Sub'])){
        $SubMenu="";
    }else{
        $SubMenu=$_GET['Sub'];
    }
    if($SessionAkses=="Admin"){
        include "_Partial/MenuAdmin.php";
    }else{
        if($SessionAkses=="Supervisi"){
            include "_Partial/MenuSupervisi.php";
        }else{
            if($SessionAkses=="CS"){
                include "_Partial/MenuAnggota.php";
            }else{
                if($SessionAkses=="Mitra"){
                    include "_Partial/MenuMitra.php";
                }else{
                    include "_Partial/MenuAnggota.php";
                }
            }
        }
    }
?>
 
