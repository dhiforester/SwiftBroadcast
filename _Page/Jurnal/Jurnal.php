<?php
    if(empty($_GET['Sub'])){
        include "_Page/Jurnal/JurnalHome.php";
    }else{
        $Sub=$_GET['Sub'];
        if($Sub=="TambahJurnal"){
            include "_Page/Jurnal/FormTambahJurnal.php";
        }else{
            if($Sub=="EditJurnal"){
                include "_Page/Jurnal/FormEditJurnal.php";
            }else{
                include "_Page/Jurnal/JurnalHome.php";
            }
        }
    }
?>