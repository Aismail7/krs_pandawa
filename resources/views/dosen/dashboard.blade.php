@extends('layouts.layout')

@section('content')
        <div class="col-md-12"> <center><img style="height:200px;" src="img/logo.png" alt="" /></center>
            <div class="card">
                <div class="header">
                    <h4 class="title">{{$title}}</h4>
                    <p class="category"></p>
                </div>
                <div class="content">
                    <p>Selamat Datang di Sistem Informasi Portal Kampus STMIK Insan Pembangunan. Setelah melakukan login pertama kali ke Sistem, harap segera melakukan pergantian password pada menu Setting, guna menanggulangi hal-hal yang tidak diinginkan.</p>
                    <div id="list">
                        <ul>
                            <li><strong>Persetujuan Kartu Rencana Studi KRS</strong><br>Untuk Melakukan Persetujuan KRS Pada Mahasiswa Yang Dibimbing</li>
                            <li><strong>Daftar Mahasiswa Bimbingan</strong><br>Melihat daftar mahasiswa yang masuk dalam bimbingan Dosen</li>
                            <li><strong>Nilai Mahasiswa</strong><br>Mengisi nilai mahasiswa yang dibimbing</li>
                            <li><strong>Log Out</strong><br>Keluar dari sistem</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
@endsection