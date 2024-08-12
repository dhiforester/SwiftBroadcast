$(document).ready(function () {
    // Fungsi untuk mengambil data dari file JSON
    $.getJSON("_Page/Dashboard/GrafikTransaksi.json", function (data) {
        // Mengolah data untuk ApexCharts
        const categories = data.map(item => item.x);
        const PesanSeries = data.map(item => parseFloat(item.yPesan));
        const TransaksiSeries = data.map(item => parseFloat(item.yTransaksi));

        // Konfigurasi grafik
        var options = {
            chart: {
                type: 'line',
                height: 400
            },
            series: [
                {
                    name: 'Pesan',
                    data: PesanSeries
                },
                {
                    name: 'Transaksi',
                    data: TransaksiSeries
                }
            ],
            xaxis: {
                categories: categories
            },
            yaxis: {
                labels: {
                    formatter: function (value) {
                        return value;
                    }
                }
            },
            tooltip: {
                y: {
                    formatter: function (value) {
                        return value;
                    }
                }
            }
        };

        // Inisialisasi grafik
        var chart = new ApexCharts(document.querySelector("#chart"), options);
        chart.render();
    });
});