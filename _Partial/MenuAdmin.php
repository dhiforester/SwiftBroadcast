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
                <i class="bi bi-person-circle"></i>
                <span>Akses</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="akses-nav" class="nav-content collapse <?php if($PageMenu=="AksesFitur"||$PageMenu=="AksesEntitas"||$PageMenu=="Akses"){echo "show";} ?>" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="index.php?Page=AksesFitur" class="<?php if($PageMenu=="AksesFitur"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Fitur Aplikasi</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=AksesEntitas" class="<?php if($PageMenu=="AksesEntitas"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Entitas Admin</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=Akses" class="<?php if($PageMenu=="Akses"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Akses Admin</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu!=="Supervisi"){echo "collapsed";} ?>" href="index.php?Page=Supervisi">
                <i class="bi bi-person"></i>
                <span>Supervisi</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu!=="Anggota"){echo "collapsed";} ?>" href="index.php?Page=Anggota">
                <i class="bi bi-people"></i>
                <span>Customer Service</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu!=="Kontak"){echo "collapsed";} ?>" href="index.php?Page=Kontak">
                <i class="bi bi-telephone"></i>
                <span>Kontak</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu!=="Transaksi"){echo "collapsed";} ?>" href="index.php?Page=Transaksi">
                <i class="bi bi-cart-check"></i>
                <span>Transaksi</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="KinerjaSupervisi"||$PageMenu=="BukuBesar"||$PageMenu=="NeracaSaldo"||$PageMenu=="LabaRugi"||$PageMenu=="RekapitulasiTransaksi"){echo "";}else{echo "collapsed";} ?>" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="javascript:void(0);">
                <i class="bi bi-bar-chart"></i><span>Laporan</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="charts-nav" class="nav-content collapse <?php if($PageMenu=="KinerjaSupervisi"||$PageMenu=="BukuBesar"||$PageMenu=="NeracaSaldo"||$PageMenu=="LabaRugi"||$PageMenu=="RekapitulasiTransaksi"){echo "show";} ?>" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="index.php?Page=KinerjaSupervisi" class="<?php if($PageMenu=="KinerjaSupervisi"){echo "active";} ?>">
                    <i class="bi bi-circle"></i><span>Kinerja Supervisi</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?Page=RekapitulasiTransaksi" class="<?php if($PageMenu=="RekapitulasiTransaksi"){echo "active";} ?>">
                    <i class="bi bi-circle"></i><span>Rekapitulasi Transaksi</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu=="SettingGeneral"||$PageMenu=="SettingEmail"||$PageMenu=="AutoJurnal"){echo "";}else{echo "collapsed";} ?>" data-bs-target="#components-nav" data-bs-toggle="collapse" href="javascript:void(0);">
                <i class="bi bi-gear"></i>
                    <span>Pengaturan</span><i class="bi bi-chevron-down ms-auto">
                </i>
            </a>
            <ul id="components-nav" class="nav-content collapse <?php if($PageMenu=="SettingGeneral"||$PageMenu=="SettingEmail"||$PageMenu=="AutoJurnal"){echo "show";} ?>" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="index.php?Page=SettingGeneral" class="<?php if($PageMenu=="SettingGeneral"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Pengaturan Umum</span>
                    </a>
                </li> 
                <li>
                    <a href="index.php?Page=SettingEmail" class="<?php if($PageMenu=="SettingEmail"){echo "active";} ?>">
                        <i class="bi bi-circle"></i><span>Email Gateway</span>
                    </a>
                </li> 
            </ul>
        </li>
        <li class="nav-heading">Fitur Lainnya</li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu!=="Aktivitas"){echo "collapsed";} ?>" href="index.php?Page=Aktivitas&Sub=AktivitasUmum">
                <i class="bi bi-record-btn"></i>
                <span>Log Aktivitas</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($PageMenu!=="Help"){echo "collapsed";} ?>" href="index.php?Page=Help&Sub=HelpData">
                <i class="bi bi-question"></i>
                <span>Bantuan</span>
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