function filterAndLoadTable() {
    var ProsesFilter = $('#ProsesFilter').serialize();
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Jurnal/TabelJurnal.php',
        data 	    :  ProsesFilter,
        success     : function(data){
            $('#MenampilkanTabelJurnal').html(data);
        }
    });
}
function ShowSelectOptionPerkiraan() {
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Jurnal/SelectOptionPerkiraan.php',
        success     : function(data){
            $('.SelectOptionPerkiraan').html(data);
        }
    });
}
//Menampilkan Data Pertama Kali
$(document).ready(function() {
    filterAndLoadTable();
    ShowSelectOptionPerkiraan();
});
//Ketika Keyword By Dipilih
$('#KeywordBy').change(function(){
    var KeywordBy = $('#KeywordBy').val();
    $('#FormFilter').html('Loading...');
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Jurnal/FormFilter.php',
        data 	    :  {KeywordBy: KeywordBy},
        success     : function(data){
            $('#FormFilter').html(data);
        }
    });
});
//Ketika Filter Di Submit
$('#ProsesFilter').submit(function(){
    filterAndLoadTable();
});
$('#TambahUraianJurnal').click(function() {
    //Membuat variabel form
    var GetIdPerkiraan = $('#GetIdPerkiraan').val();
    var GetPosisi = $('#GetPosisi').val();
    var GetNominal = $('#GetNominal').val();
    // Menentukan nomor urut baris baru
    var rowCount = $('#RowUraianJurnal tr').length + 1;
    // Menambahkan baris baru
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Jurnal/RowUraianJurnal.php',
        data 	    :  {id_perkiraan: GetIdPerkiraan, d_k: GetPosisi, nominal: GetNominal, rowCount: rowCount},
        success     : function(data){
            $('#RowUraianJurnal').append(data);
        }
    });
});
// Menghapus baris pada tabel
$(document).on('click', '.hapus_row', function() {
    $(this).closest('tr').remove();
    // Update nomor urut setelah baris dihapus
    $('#RowUraianJurnal tr').each(function(index, tr) {
        $(tr).find('td:first').text(index + 1);
    });
});
//Tambah Pilih Transaksi
$('#ModalPilihTransaksi').on('show.bs.modal', function (e) {
    var ProsesBatasPilihTransaksi =$('#ProsesBatasPilihTransaksi').serialize();
    $('#FormPilihTransaksi').html("Loading...");
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Jurnal/TabelTransaksi.php',
        data        : ProsesBatasPilihTransaksi,
        success     : function(data){
            $('#FormPilihTransaksi').html(data);
        }
    });
    $('#ProsesBatasPilihTransaksi').submit(function(){
        var ProsesBatasPilihTransaksi = $('#ProsesBatasPilihTransaksi').serialize();
        $('#FormPilihTransaksi').html('Loading...');
        $.ajax({
            type 	    : 'POST',
            url 	    : '_Page/Jurnal/TabelTransaksi.php',
            data        : ProsesBatasPilihTransaksi,
            success     : function(data){
                $('#FormPilihTransaksi').html(data);
            }
        });
    });
});

$('#ProsesFilterJurnal').submit(function(){
    var ProsesFilterJurnal = $('#ProsesFilterJurnal').serialize();
    $('#MenampilkanTabelJurnal').html('Loading...');
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Jurnal/TabelJurnal.php',
        data        : ProsesFilterJurnal,
        success     : function(data){
            $('#MenampilkanTabelJurnal').html(data);
        }
    });
});
//Detail Akun Perkiraan
$('#ModalDetailJurnal').on('show.bs.modal', function (e) {
    var GetData = $(e.relatedTarget).data('id');
    var pecah = GetData.split(",");
    var id_jurnal = pecah[0];
    var keyword = pecah[1];
    var batas = pecah[2];
    var ShortBy = pecah[3];
    var OrderBy = pecah[4];
    var page = pecah[5];
    var posisi = pecah[6];
    $('#FormDetailJurnal').html("Loading...");
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Jurnal/FormDetailJurnal.php',
        data        : {id_jurnal: id_jurnal},
        success     : function(data){
            $('#FormDetailJurnal').html(data);
        }
    });
    //Edit Jurnal
    $('#ModalEditJurnal').on('show.bs.modal', function (e) {
        $('#FormEditJurnal').html("Loading...");
        $.ajax({
            type 	    : 'POST',
            url 	    : '_Page/Jurnal/FormEditJurnal.php',
            data        : {id_jurnal: id_jurnal},
            success     : function(data){
                $('#FormEditJurnal').html(data);
                //Proses Edit Akun perkiraan
                $('#ProsesEditJurnal').submit(function(){
                    $('#NotifikasiEditJurnal').html('<div class="spinner-border text-secondary" role="status"><span class="sr-only"></span></div>');
                    var form = $('#ProsesEditJurnal')[0];
                    var data = new FormData(form);
                    $.ajax({
                        type 	    : 'POST',
                        url 	    : '_Page/Jurnal/ProsesEditJurnal.php',
                        data 	    :  data,
                        cache       : false,
                        processData : false,
                        contentType : false,
                        enctype     : 'multipart/form-data',
                        success     : function(data){
                            $('#NotifikasiEditJurnal').html(data);
                            var NotifikasiEditJurnalBerhasil=$('#NotifikasiEditJurnalBerhasil').html();
                            if(NotifikasiEditJurnalBerhasil=="Success"){
                                $('#ModalEditJurnal').modal('toggle');
                                $.ajax({
                                    type 	    : 'POST',
                                    url 	    : '_Page/Jurnal/TabelJurnal.php',
                                    data 	    :  {keyword: keyword, batas: batas, page: page, ShortBy: ShortBy, OrderBy: OrderBy},
                                    success     : function(data){
                                        $('#MenampilkanTabelJurnal').html(data);
                                        swal("Good Job!", "Edit Akun Perkiraan Berhasil!", "success");
                                    }
                                });
                            }
                        }
                    });
                });
            }
        });
    });
    //Hapus Jurnal
    $('#ModalHapusJurnal').on('show.bs.modal', function (e) {
        $('#FormhapusJurnal').html("Loading...");
        $.ajax({
            type 	    : 'POST',
            url 	    : '_Page/Jurnal/FormhapusJurnal.php',
            data        : {id_jurnal: id_jurnal},
            success     : function(data){
                $('#FormhapusJurnal').html(data);
                //Konfirmasi Hapus Jurnal
                $('#KonfirmasiHapusJurnal').click(function(){
                    $('#NotifikasiHapusJurnal').html('<div class="spinner-border text-secondary" role="status"><span class="sr-only"></span></div>');
                    $.ajax({
                        type 	    : 'POST',
                        url 	    : '_Page/Jurnal/ProsesHapusJurnal.php',
                        data        : {id_jurnal: id_jurnal},
                        success     : function(data){
                            $('#NotifikasiHapusJurnal').html(data);
                            var NotifikasiHapusJurnalBerhasil=$('#NotifikasiHapusJurnalBerhasil').html();
                            if(NotifikasiHapusJurnalBerhasil=="Success"){
                                $('#ModalHapusJurnal').modal('toggle');
                                $.ajax({
                                    type 	    : 'POST',
                                    url 	    : '_Page/Jurnal/TabelJurnal.php',
                                    data 	    :  {keyword: keyword, batas: batas, page: page, ShortBy: ShortBy, OrderBy: OrderBy},
                                    success     : function(data){
                                        $('#MenampilkanTabelJurnal').html(data);
                                        swal("Good Job!", "Hapus Jurnal Berhasil!", "success");
                                    }
                                });
                            }
                        }
                    });
                });
            }
        });
    });
});

