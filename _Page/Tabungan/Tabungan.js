function filterAndLoadTable() {
    var ProsesFilter = $('#ProsesFilter').serialize();
    $.ajax({
        type: 'POST',
        url: '_Page/Tabungan/TabelTabungan.php',
        data: ProsesFilter,
        success: function(data) {
            $('#MenampilkanTabelTabungan').html(data);
        }
    });
}
function showListAnggota() {
    var ProsesCariAnggota = $('#ProsesCariAnggota').serialize();
    $('#MenampilkanListAnggota').html('Loading...');
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Tabungan/ListAnggota.php',
        data 	    :  ProsesCariAnggota,
        success     : function(data){
            $('#MenampilkanListAnggota').html(data);
        }
    });
}
$(document).ready(function() {
    filterAndLoadTable();
});
$('#keyword_by').change(function(){
    var keyword_by = $('#keyword_by').val();
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Tabungan/FormFilter.php',
        data 	    :  {keyword_by: keyword_by},
        success     : function(data){
            $('#FormFilter').html(data);
        }
    });
});
$('#ProsesFilter').submit(function(){
    $('#page').val("1");
    filterAndLoadTable();
    $('#ModalFilter').modal('hide');
});
//Menampilkan Data Anggota
$('#ModalPilihAnggota').on('show.bs.modal', function (e) {
    showListAnggota();
});
$('#ProsesCariAnggota').submit(function(){
    showListAnggota();
});
//Modal Tambah Simpanan
$('#ModalTambahSimpanan').on('show.bs.modal', function (e) {
    var id_anggota = $(e.relatedTarget).data('id');
    $('#FormTambahSimpanan').html("Loading...");
    $('#NotifikkasiTambahSimpanan').html("");
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Tabungan/FormTambahSimpanan.php',
        data        : {id_anggota: id_anggota},
        success     : function(data){
            $('#FormTambahSimpanan').html(data);
        }
    });
});
//Proses Tambah Simpanan
$('#ProsesTambahSimpanan').submit(function(){
    $('#NotifikkasiTambahSimpanan').html('<div class="spinner-border text-secondary" role="status"><span class="sr-only"></span></div>');
    var form = $('#ProsesTambahSimpanan')[0];
    var data = new FormData(form);
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Tabungan/ProsesTambahSimpanan.php',
        data 	    :  data,
        cache       : false,
        processData : false,
        contentType : false,
        enctype     : 'multipart/form-data',
        success     : function(data){
            $('#NotifikkasiTambahSimpanan').html(data);
            var NotifikkasiTambahSimpananBerhasil=$('#NotifikkasiTambahSimpananBerhasil').html();
            if(NotifikkasiTambahSimpananBerhasil=="Success"){
                $('#NotifikasiTambahSimpananWajib').html('');
                $('#ModalTambahSimpanan').modal('hide');
                $('#page').val("1");
                filterAndLoadTable();
                Swal.fire(
                    'Success!',
                    'Tambah Simpanan Berhasil!',
                    'success'
                )
            }
        }
    });
});
//Modal Detail Simpanan
$('#ModalDetailSimpanan').on('show.bs.modal', function (e) {
    var id_simpanan = $(e.relatedTarget).data('id');
    $('#FormDetailSimpanan').html("Loading...");
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Tabungan/FormDetailSimpanan.php',
        data        : {id_simpanan: id_simpanan},
        success     : function(data){
            $('#FormDetailSimpanan').html(data);
        }
    });
});
//Modal Edit Simpanan
$('#ModalEditSimpanan').on('show.bs.modal', function (e) {
    var id_simpanan = $(e.relatedTarget).data('id');
    $('#FormEditSimpanan').html("Loading...");
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Tabungan/FormEditSimpanan.php',
        data        : {id_simpanan: id_simpanan},
        success     : function(data){
            $('#FormEditSimpanan').html(data);
            $('#NotifikasiEditSimpanan').html('');
        }
    });
});
//Proses Edit Simpanan
$('#ProsesEditSimpanan').submit(function(){
    $('#NotifikasiEditSimpanan').html('<div class="spinner-border text-secondary" role="status"><span class="sr-only"></span></div>');
    var form = $('#ProsesEditSimpanan')[0];
    var data = new FormData(form);
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Tabungan/ProsesEditSimpanan.php',
        data 	    :  data,
        cache       : false,
        processData : false,
        contentType : false,
        enctype     : 'multipart/form-data',
        success     : function(data){
            $('#NotifikasiEditSimpanan').html(data);
            var NotifikasiEditSimpananBerhasil=$('#NotifikasiEditSimpananBerhasil').html();
            if(NotifikasiEditSimpananBerhasil=="Success"){
                $('#NotifikasiEditSimpanan').html('');
                $('#ModalEditSimpanan').modal('hide');
                filterAndLoadTable();
                Swal.fire(
                    'Success!',
                    'Edit Simpanan Berhasil!',
                    'success'
                )
            }
        }
    });
});
//Modal Hapus Simpanan
$('#ModalHapusSimpanan').on('show.bs.modal', function (e) {
    var id_simpanan = $(e.relatedTarget).data('id');
    $('#FormHapusSimpanan').html("Loading...");
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Tabungan/FormHapusSimpanan.php',
        data        : {id_simpanan: id_simpanan},
        success     : function(data){
            $('#FormHapusSimpanan').html(data);
            $('#NotifikasiHapusSimpanan').html('');
        }
    });
});
//Proses Hapus Simpanan
$('#ProsesHapusSimpanan').submit(function(){
    $('#NotifikasiHapusSimpanan').html('<div class="spinner-border text-secondary" role="status"><span class="sr-only"></span></div>');
    var form = $('#ProsesHapusSimpanan')[0];
    var data = new FormData(form);
    $.ajax({
        type 	    : 'POST',
        url 	    : '_Page/Tabungan/ProsesHapusSimpanan.php',
        data 	    :  data,
        cache       : false,
        processData : false,
        contentType : false,
        enctype     : 'multipart/form-data',
        success     : function(data){
            $('#NotifikasiHapusSimpanan').html(data);
            var NotifikasiHapusSimpananBerhasil=$('#NotifikasiHapusSimpananBerhasil').html();
            if(NotifikasiHapusSimpananBerhasil=="Success"){
                $('#NotifikasiHapusSimpanan').html('');
                $('#ModalHapusSimpanan').modal('hide');
                filterAndLoadTable();
                Swal.fire(
                    'Success!',
                    'Hapus Simpanan Berhasil!',
                    'success'
                )
            }
        }
    });
});