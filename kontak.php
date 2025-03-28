
<table>
    <tr>
        <td>Nama</td>
        <td>Kontak</td>
    </tr>
    <?php
        $JumlahLooping=500;
        for($i=1; $i<=$JumlahLooping; $i++){
            $kode_wilayah="628";
            $randomNumber = '';
            for ($a = 0; $a < 10; $a++) {
                $randomNumber .= mt_rand(0, 9);
            }
            $kontak="$kode_wilayah$randomNumber";
            echo '<tr>';
            echo '  <td>'.$i.'</td>';
            echo '  <td>'.$kontak.'</td>';
            echo '</tr>';
        }
    ?>
</table>