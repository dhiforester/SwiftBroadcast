<aside id="sidebar" class="sidebar menu_background">
    <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu==""){echo "";}else{echo "collapsed";} ?>" href="index.php">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="AksesFitur"||$PageMenu=="AksesEntitas"||$PageMenu=="Akses"){echo "";}else{echo "collapsed";} ?>" data-bs-target="#akses-nav" data-bs-toggle="collapse" href="javascript:void(0);">
                <i class="bi bi-person"></i>
                <span>Akses</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="akses-nav" class="nav-content collapse <?php if($PageMenu=="AksesFitur"||$PageMenu=="AksesEntitas"||$PageMenu=="Akses"){echo "show";} ?>" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="index.php?Page=AksesFitur" class="<?php if($PageMenu=="AksesFitur"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Fitur</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=AksesEntitas" class="<?php if($PageMenu=="AksesEntitas"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Entitas</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=Akses" class="<?php if($PageMenu=="Akses"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Akses</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="Anggota"||$PageMenu=="AnggotaKeluarMasuk"||$PageMenu=="RekapAnggota"){echo "";}else{echo "collapsed";} ?>" data-bs-target="#anggota-nav" data-bs-toggle="collapse" href="javascript:void(0);">
                <i class="bi bi-people"></i>
                <span>Anggota</span>
                <i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="anggota-nav" class="nav-content collapse <?php if($PageMenu=="Anggota"||$PageMenu=="AnggotaKeluarMasuk"||$PageMenu=="RekapAnggota"){echo "show";} ?>" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="index.php?Page=Anggota" class="<?php if($PageMenu=="Anggota"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Anggota</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=AnggotaKeluarMasuk" class="<?php if($PageMenu=="AnggotaKeluarMasuk"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Keluar & Masuk</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=RekapAnggota" class="<?php if($PageMenu=="RekapAnggota"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Rekap Anggota</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="JenisSimpanan"||$PageMenu=="SimpananWajib"||$PageMenu=="Tabungan"||$PageMenu=="RekapSimpanan"){echo "";}else{echo "collapsed";} ?>" data-bs-target="#simpanan-nav" data-bs-toggle="collapse" href="javascript:void(0);">
                <i class="bi bi-wallet"></i>
                <span>Simpanan</span>
                <i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="simpanan-nav" class="nav-content collapse <?php if($PageMenu=="JenisSimpanan"||$PageMenu=="SimpananWajib"||$PageMenu=="Tabungan"||$PageMenu=="RekapSimpanan"){echo "show";} ?>" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="index.php?Page=JenisSimpanan" class="<?php if($PageMenu=="JenisSimpanan"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Jenis Simpanan</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=SimpananWajib" class="<?php if($PageMenu=="SimpananWajib"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Simpanan Wajib</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=Tabungan" class="<?php if($PageMenu=="Tabungan"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Log Simpanan</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=RekapSimpanan" class="<?php if($PageMenu=="RekapSimpanan"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Rekap Simpanan</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="Pinjaman"||$PageMenu=="Tagihan"||$PageMenu=="RekapPinjaman"){echo "";}else{echo "collapsed";} ?>" data-bs-target="#pinjaman-nav" data-bs-toggle="collapse" href="javascript:void(0);">
                <i class="bi bi-bank"></i>
                <span>Pinjaman</span>
                <i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="pinjaman-nav" class="nav-content collapse <?php if($PageMenu=="Pinjaman"||$PageMenu=="Tagihan"||$PageMenu=="RekapPinjaman"){echo "show";} ?>" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="index.php?Page=Pinjaman" class="<?php if($PageMenu=="Pinjaman"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Sesi Pinjaman</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=Tagihan" class="<?php if($PageMenu=="Tagihan"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Tagihan/Tunggakan</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=RekapPinjaman" class="<?php if($PageMenu=="RekapPinjaman"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Rekap Pinjaman</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- <li class="nav-item">
            <a class="nav-link <?php if($PageMenu!=="Supplier"){echo "collapsed";} ?>" href="index.php?Page=Supplier">
                <i class="bi bi-truck"></i>
                <span>Supplier</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="Barang"||$PageMenu=="BarangExpired"||$PageMenu=="StockOpename"){echo "";}else{echo "collapsed";} ?>" data-bs-target="#icons2-nav" data-bs-toggle="collapse" href="javascript:void(0);">
                <i class="bi bi-box-seam"></i>
                <span>Barang</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="icons2-nav" class="nav-content collapse <?php if($PageMenu=="Barang"||$PageMenu=="BarangExpired"||$PageMenu=="StockOpename"){echo "show";} ?>" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="index.php?Page=Barang" class="<?php if($PageMenu=="Barang"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Master Barang</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=BarangExpired" class="<?php if($PageMenu=="BarangExpired"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Batch & Expired</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=StockOpename" class="<?php if($PageMenu=="StockOpename"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Stock Opename</span>
                    </a>
                </li>
            </ul>
        </li> -->
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="JenisTransaksi"||$PageMenu=="RekapTransaksi"||$PageMenu=="Transaksi"){echo "";}else{echo "collapsed";} ?>" data-bs-target="#transaksi-nav" data-bs-toggle="collapse" href="javascript:void(0);">
                <i class="bi bi-cash-coin"></i>
                <span>Transaksi</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="transaksi-nav" class="nav-content collapse <?php if($PageMenu=="JenisTransaksi"||$PageMenu=="RekapTransaksi"||$PageMenu=="Transaksi"){echo "show";} ?>" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="index.php?Page=JenisTransaksi" class="<?php if($PageMenu=="JenisTransaksi"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Jenis Transaksi</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=Transaksi" class="<?php if($PageMenu=="Transaksi"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Transaksi</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=RekapTransaksi" class="<?php if($PageMenu=="RekapTransaksi"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Rekap Transaksi</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="Transaksi"||$PageMenu=="Pembayaran"||$PageMenu=="AkunPerkiraan"||$PageMenu=="Jurnal"||$PageMenu=="BagiHasil"){echo "";}else{echo "collapsed";} ?>" data-bs-target="#keuangan-nav" data-bs-toggle="collapse" href="javascript:void(0);">
                <i class="bi bi-gem"></i>
                <span>Keuangan</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="keuangan-nav" class="nav-content collapse <?php if($PageMenu=="Transaksi"||$PageMenu=="Pembayaran"||$PageMenu=="AkunPerkiraan"||$PageMenu=="Jurnal"||$PageMenu=="BagiHasil"){echo "show";} ?>" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="index.php?Page=AkunPerkiraan" class="<?php if($PageMenu=="AkunPerkiraan"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Akun Perkiraan</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=Jurnal" class="<?php if($PageMenu=="Jurnal"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Jurnal</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=BagiHasil" class="<?php if($PageMenu=="BagiHasil"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Bagi Hasil</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="SimpanPinjam"||$PageMenu=="BukuBesar"||$PageMenu=="NeracaSaldo"||$PageMenu=="LabaRugi"||$PageMenu=="RekapitulasiTransaksi"){echo "";}else{echo "collapsed";} ?>" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="javascript:void(0);">
                <i class="bi bi-bar-chart"></i><span>Laporan</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="charts-nav" class="nav-content collapse <?php if($PageMenu=="SimpanPinjam"||$PageMenu=="BukuBesar"||$PageMenu=="NeracaSaldo"||$PageMenu=="LabaRugi"||$PageMenu=="RekapitulasiTransaksi"){echo "show";} ?>" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="index.php?Page=SimpanPinjam" class="<?php if($PageMenu=="SimpanPinjam"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Simpan-Pinjam</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=BukuBesar" class="<?php if($PageMenu=="BukuBesar"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Buku Besar</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=NeracaSaldo" class="<?php if($PageMenu=="NeracaSaldo"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Neraca saldo</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=LabaRugi" class="<?php if($PageMenu=="LabaRugi"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Laba Rugi</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=RekapitulasiTransaksi" class="<?php if($PageMenu=="RekapitulasiTransaksi"){echo "active";} ?>">
                    <i class="bi bi-circle"></i><span>Rekapitulasi</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="SettingGeneral"||$PageMenu=="EntitasAkses"||$PageMenu=="AutoJurnal"){echo "";}else{echo "collapsed";} ?>" data-bs-target="#components-nav" data-bs-toggle="collapse" href="javascript:void(0);">
                <i class="bi bi-gear"></i>
                    <span>Pengaturan</span><i class="bi bi-chevron-down ms-auto">
                </i>
            </a>
            <ul id="components-nav" class="nav-content collapse <?php if($PageMenu=="SettingGeneral"||$PageMenu=="EntitasAkses"||$PageMenu=="AutoJurnal"){echo "show";} ?>" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="index.php?Page=SettingGeneral" class="<?php if($PageMenu=="SettingGeneral"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Umum</span>
                    </a>
                </li> 
                <li>
                    <a href="index.php?Page=AutoJurnal" class="<?php if($PageMenu=="AutoJurnal"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Auto Jurnal</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=SettingEmail" class="<?php if($PageMenu=="SettingEmail"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Email</span>
                    </a>
                </li> 
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="Aktivitas"){echo "";}else{echo "collapsed";} ?>" data-bs-target="#catatan-aktivitas" data-bs-toggle="collapse" href="javascript:void(0);">
                <i class="bi bi-record-btn"></i><span>Aktivitas</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="catatan-aktivitas" class="nav-content collapse <?php if($PageMenu=="Aktivitas"){echo "show";} ?>" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="index.php?Page=Aktivitas&Sub=AktivitasUmum" class="<?php if($SubMenu=="AktivitasUmum"){echo "active";} ?>">
                    <i class="bi bi-circle"></i><span>Aktivitas Umum</span>
                    </a>
                </li>
                <!-- <li>
                    <a href="index.php?Page=Aktivitas&Sub=Email" class="<?php if($SubMenu=="Email"){echo "active";} ?>">
                    <i class="bi bi-circle"></i><span>Email</span>
                    </a>
                </li> -->
            </ul>
        </li>
        <li class="nav-heading">Fitur Lainnya</li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu!=="Help"){echo "collapsed";} ?>" href="index.php?Page=Help&Sub=HelpData">
                <i class="bi bi-question"></i>
                <span>Bantuan</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu!=="Version"){echo "collapsed";} ?>" href="index.php?Page=Version">
                <i class="bi bi-info-circle"></i>
                <span>Tentang</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="javascript:void(0);" data-bs-toggle="modal" data-bs-target="#ModalLogout">
                <i class="bi bi-box-arrow-in-left"></i>
                <span>Keluar</span>
            </a>
        </li>
    </ul>
</aside> 