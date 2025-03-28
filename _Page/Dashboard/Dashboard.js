$(document).ready(function () {
    function ShowConversionRate() {
        $.ajax({
            type: 'POST',
            url: '_Page/Dashboard/ConversionRate.php',
            success: function(data) {
                var chartData = JSON.parse(data);
                var total = 100;
                var options = {
                    chart: {
                        type: 'donut'
                    },
                    series: chartData.series,
                    labels: chartData.labels,
                    colors: ['#00E396', '#FF4560'],
                    plotOptions: {
                        pie: {
                            donut: {
                                labels: {
                                    show: true,
                                    total: {
                                        show: true,
                                        label: 'Total',
                                        formatter: function () {
                                            return total;
                                        }
                                    }
                                }
                            }
                        }
                    },
                    dataLabels: {
                        enabled: true
                    },
                    legend: {
                        position: 'bottom'
                    }
                };
                var chart = new ApexCharts(document.querySelector("#ConversionRate"), options);
                chart.render();
            }
        });
    }
    ShowConversionRate();
    // Fungsi untuk mengambil data dari file JSON
    $.getJSON("_Page/Dashboard/GrafikTransaksi.json", function (data) {
        // Mengolah data untuk ApexCharts
        const categories = data.map(item => item.x);
        const PesanSeries = data.map(item => parseFloat(item.yPesan));
        const TransaksiSeries = data.map(item => parseFloat(item.yTransaksi));

        // Konfigurasi grafik
        var options = {
            chart: {
                type: 'bar',
                height: 400
            },
            series: [
                {
                    name: 'Broadcast',
                    data: PesanSeries
                },
                {
                    name: 'Closing',
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
    //CART ANGGOTA
    $.getJSON("_Page/Dashboard/GrafikTransaksiAnggota.json", function (data) {
        // Mengolah data untuk ApexCharts
        const categories = data.map(item => item.x);
        const PesanSeries = data.map(item => parseFloat(item.yPesan));
        const TransaksiSeries = data.map(item => parseFloat(item.yTransaksi));

        // Konfigurasi grafik
        var options = {
            chart: {
                type: 'bar',
                height: 400
            },
            series: [
                {
                    name: 'Broadcast',
                    data: PesanSeries
                },
                {
                    name: 'Closing',
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
        var chart = new ApexCharts(document.querySelector("#chart_anggota"), options);
        chart.render();
    });
    //CART MITRA
    $.getJSON("_Page/Dashboard/GrafikTransaksiMitra.json", function (data) {
        // Mengolah data untuk ApexCharts
        const categories = data.map(item => item.x);
        const PesanSeries = data.map(item => parseFloat(item.yPesan));
        const TransaksiSeries = data.map(item => parseFloat(item.yTransaksi));

        // Konfigurasi grafik
        var options = {
            chart: {
                type: 'bar',
                height: 400
            },
            series: [
                {
                    name: 'Broadcast',
                    data: PesanSeries
                },
                {
                    name: 'Closing',
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
        var chart = new ApexCharts(document.querySelector("#chart_mitra"), options);
        chart.render();
    });
});