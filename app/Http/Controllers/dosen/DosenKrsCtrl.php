<?php

namespace App\Http\Controllers\dosen;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\MataKuliah;
use App\Models\Mahasiswa;
use App\Models\ThnAjaran;
use App\Models\Nilai;
use App\Models\Krs;
use App\Models\KrsDetil;
use App\Models\Dosen;
use App\Models\Jadwal;
use DB;
class DosenKrsCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        //
        $this->data['title'] = "Persetujuan KRS - Sistem Informasi Akademik Online";
        $cek=Auth::user()->dosen->id;

        $this->data['mahasiswa'] = DB::select("select
              `krs`.`id` as krsid, 
              `tbl_mahasiswa`.*,
              COALESCE(SUM(mk.sks), 0) AS j_sks,
              `krs`.`status`
              ,krs.semester
            FROM
              `tbl_mahasiswa` 
              LEFT JOIN `tbl_krs` AS `krs` 
                ON `krs`.`mahasiswa_id` = `tbl_mahasiswa`.`id` 
              LEFT JOIN `tbl_krs_detil` AS `krsd` 
                ON `krsd`.`krs_id` = `krs`.`id` 
              LEFT JOIN `tbl_jadwal` AS `j` 
                ON `j`.`id` = `krsd`.`jadwal_id` 
              LEFT JOIN `tbl_mk` AS `mk` 
                ON `mk`.`id` = `j`.`mk_id` 
            WHERE `tbl_mahasiswa`.`dosen_id` = '$cek'
              AND `tbl_mahasiswa`.`deleted_at` IS NULL 
            GROUP BY `tbl_mahasiswa`.`id`,
              `krs`.`id` ");
        $isian = DB::select("select count(status) as jml from tbl_krs where status=0");
         // dd($isian);
        return view('dosen.persetujuan.index',$this->data,['isian'=>$isian]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $this->data['krs'] = Krs::find($id);
        $this->data['title'] = 'Detail Kartu Rencana Studi - '.$this->data['krs']->mahasiswa->nama_mahasiswa;
        $mahasiswa_id = $this->data['krs']->mahasiswa->id;
        $this->data['thn_ajaran'] = ThnAjaran::where('status',1)->first();
        $this->data['ipk'] = Nilai::Ipk($mahasiswa_id,$this->data['krs']->semester);
        $this->data['beban_studi'] = Nilai::MaxSks($this->data['ipk']);
        $this->data['peserta'] = Jadwal::Peserta();
        $this->data['calon_peserta'] = Jadwal::CalonPeserta();

        return view('dosen.persetujuan.edit',$this->data);
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        dd($id);
        KRS::find($id)->update(['status' => $request->input('status'),'tgl_persetujuan' => date('Y-m-d')]);
        $info = $request->input('status') == 1 ? 'KRS berhasil disetujui' : 'KRS berhasil dibatalkan';
        return redirect()->route('persetujuan.index')->with('info',$info);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        KrsDetil::find($id)->delete();
        return redirect()->back()->with('info','Jadwal Berhasil Dihapus');
    }
}
