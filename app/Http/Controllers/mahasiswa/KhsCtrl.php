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
        $this->data['khs'] = Krs::whereHas('mahasiswa_id','=',$mhs)->whereHas('krsdetil',function($q){
            $q->has('nilai');
        })->get();



            $this->data['khsdetail'] = DB::select("
                select * from tbl_krs as a
                                                    INNER JOIN tbl_krs_detil as b
                                                        on a.id=b.krs_id 
                                                    LEFT JOIN tbl_nilai as c 
                                                        on a.mahasiswa_id=c.mahasiswa_id
                                                    LEFT JOIN tbl_mahasiswa  as d
                                                        on a.mahasiswa_id=d.id
                                                    LEFT JOIN tbl_jadwal as e
                                                        on b.jadwal_id=e.id
                                                    LEFT JOIN tbl_mk as f
                                                        on e.mk_id=f.id
                                                    INNER JOIN tbl_bobot as g
                                                        on c.bobot_id=g.id
                                                    where a.mahasiswa_id='26'
                                                    GROUP BY e.id, f.id");
// dd ($this->data);
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
