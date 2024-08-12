<?php
    if(!empty($_POST['id_perkiraan'])){
        if(!empty($_POST['d_k'])){
            if(!empty($_POST['nominal'])){
                if(!empty($_POST['rowCount'])){
                    //Buat Variabel
                    $id_perkiraan=$_POST['id_perkiraan'];
                    $d_k=$_POST['d_k'];
                    $nominal=$_POST['nominal'];
                    $rowCount=$_POST['rowCount'];
                    echo '<tr>';
                    echo '  <td>'.$rowCount.'</td>';
                    echo '  <td>'.$id_perkiraan.'</td>';
                    echo '  <td>'.$nominal.'</td>';
                    echo '  <td>'.$rowCount.'</td>';
                    echo '  <td align="center"><button type="button" class="btn btn-sm btn-danger hapus_row"><i class="bi bi-x"></i></button></td>';
                    echo '</tr>';
                }
            }
        }
    }
?>