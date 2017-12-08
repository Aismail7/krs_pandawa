@if(Auth::check())
<div class="sidebar" style="background: linear-gradient(to right, #FFA500, teal);">
    <div class="sidebar-wrapper" style="background: linear-gradient(to right, #FFA500, teal);">

            @if(Auth::user()->role == 'admin')
            <div class="logo"  >
                <a href="" class="simple-text" style="color:white;">
                    Selamat Datang {{Auth::user()->username}}
                </a>
            </div>

            <ul class="nav">
            <li class="{{Request::segment(2) == '' ? 'active' : ''}}">
                <a href="{{route('admin')}}" style="color:white;">
                    <i class="ti-panel"></i>
                    <p>Dashboard</p>
                </a>
            </li>
            <li class="{{Request::segment(2) == 'dosen' ? 'active' : ''}}">
                <a href="{{route('dosen.index')}}" style="color:white;">
                    <i class="ti-view-list-alt"></i>
                    <p>Dosen</p>
                </a>
            </li>
            <li class="{{Request::segment(2) == 'mahasiswa' ? 'active' : ''}}">
                <a href="{{route('mahasiswa.index')}}" style="color:white;">
                    <i class="ti-text"></i>
                    <p>Mahasiswa</p>
                </a>
            </li>
            <li class="{{Request::segment(2) == 'matakuliah' ? 'active' : ''}}">
                <a href="{{route('matakuliah.index')}}" style="color:white;">
                    <i class="ti-pencil-alt2"></i>
                    <p>Mata Kuliah</p>
                </a>
            </li>
            <li class="{{Request::segment(2) == 'ruang' ? 'active' : ''}}">
                <a href="{{route('ruang.index')}}" style="color:white;">
                    <i class="ti-map"></i>
                    <p>Ruang</p>
                </a>
            </li>
            <li class="{{Request::segment(2) == 'jadwal' ? 'active' : ''}}">
                <a href="{{route('jadwal.index')}}" style="color:white;">
                    <i class="ti-bell"></i>
                    <p>Jadwal Kuliah</p>
                </a>
            </li>
            <li class="{{Request::segment(2) == 'thnajaran' ? 'active' : ''}}">
                <a href="{{route('thnajaran.index')}}" style="color:white;">
                    <i class="ti-bell"></i>
                    <p>Tahun Ajaran</p>
                </a>
            </li>
            @elseif(Auth::user()->role == 'mahasiswa')
            <div class="logo">
                <a href="" class="simple-text" style="color:white;">
                    Selamat Datang {{Auth::user()->mahasiswa->nama_mahasiswa}}
                </a>
            </div>

            <ul class="nav">
            <li class="{{Request::segment(2) == '' ? 'active' : ''}}">
                <a href="{{route('mahasiswa')}}" style="color:white;">
                    <i class="ti-panel"></i>
                    <p>Dashboard</p>
                </a>
            </li>
            <li class="{{Request::segment(2) == 'krs' ? 'active' : ''}}">
                <a href="{{route('krs.index')}}" style="color:white;">
                    <i class="ti-panel"></i>
                    <p>Kartu Rencana Studi</p>
                </a>
            </li>
            <li class="{{Request::segment(2) == 'khs' ? 'active' : ''}}">
                <a href="{{route('khs.index')}}" style="color:white;">
                    <i class="ti-panel"></i>
                    <p>Kartu Hasil Studi</p>
                </a>
            </li>
            @else
            <div class="logo">
                <a href="" class="simple-text" style="color:white;">
                    Selamat Datang {{Auth::user()->dosen->nama_dosen}}
                </a>
            </div>

            <ul class="nav">
            <li class="{{Request::segment(2) == '' ? 'active' : ''}}">
                <a href="{{route('dosen')}}" style="color:white;">
                    <i class="ti-panel"></i>
                    <p>Dashboard</p>
                </a>
            </li>
            <li class="{{Request::segment(2) == 'persetujuan' ? 'active' : ''}}">
                <a href="{{route('persetujuan.index')}}" style="color:white;">
                    <i class="ti-panel"></i>
                    <p>Persetujuan KRS 
                        @if(!empty($isian[0]))
                    @if($isian[0]->jml > 0)
                        <span class="badge"  style="margin-left:10px;background:red;">{{$isian[0]->jml}}</span>
                    @endif
                    @endif
                    
                    </p>
                </a>
            </li>
            <li class="{{Request::segment(2) == 'nilai' ? 'active' : ''}}">
                <a href="{{route('nilai.index')}}" style="color:white;">
                    <i class="ti-panel"></i>
                    <p>Input Nilai</p>
                </a>
            </li>
            @endif
        </ul>
    </div>
</div>
@endif