<?php

namespace App\Http\Controllers\mahasiswa;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Auth;
use DB;
use App\Models\Krs;
use App\Models\Nilai;
use App\Models\KrsDetil;

class KhsCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $mhs = Auth::user()->mahasiswa->id;
        // dd($mhs);
        $this->data['title'] = 'Nilai - Kartu Hasil Studi ';
        // $this->data['mh'] = Krs::where('mahasiswa_id','=',Auth::user()->mahasiswa->id)->get();
        $this->data['khs'] = Krs::whereHas('krsdetil',function($q){
            $q->has('nilai');
        })->get();
$this->data['krsdetail'] = Krs::join('tbl_krs_detil', 'tbl_krs.id', '=', 'tbl_krs_detil.krs_id')
 ->leftjoin('tbl_nilai', 'tbl_krs.mahasiswa_id', '=', 'tbl_nilai.mahasiswa_id')
 ->where('tbl_krs.mahasiswa_id', '=', $mhs)
 ->groupby('tbl_krs_detil.jadwal_id')
->get();
// dd($mhs);
// return $this->data['krsdetail'];
        // $this->data['krsdetail']="select * from tbl_krs as a
        //                             INNER JOIN tbl_krs_detil as b
        //                             on a.id=b.krs_id 
        //                             LEFT JOIN tbl_nilai as c 
        //                             on a.mahasiswa_id=c.mahasiswa_id
        //                             where a.mahasiswa_id='$mhs'
        //                             GROUP BY b.jadwal_id";


        return view('mahasiswa.khs.index',$this->data);
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
    }
}
