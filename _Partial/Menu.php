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
            include "_Partial/MenuAnggota.php";
        }
    }
?>
 
