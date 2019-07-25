<?php
/**
 * Created by PhpStorm.
 * User: Febrian Reza
 * Date: 21-Nov-17
 * Time: 12:34 AM
 */

namespace App\Http\Controllers;


use DB;
use Illuminate\Support\Facades\Input;
use Mockery\Exception;

class ArtikelController extends Controller
{

    public function populer()
    {

        $a = '=COUNTIFS(INDIRECT("\'"&B7&"\'!$C$2:$C$91"),">="&$C$4, INDIRECT("\'"&B7&"\'!$C$2:$C$91"),"<="&$E$4)';
        $data = DB::select(DB::raw('SELECT * FROM ( SELECT h1ID AS id_artikel, h1Judul AS judul, h1Ket AS deskripsi FROM h1
UNION
SELECT h2ID AS id_artikel, h2Judul AS judul, h2Ket AS deskripsi FROM h2
UNION
SELECT h3ID AS id_artikel, h3Judul AS judul, h3Ket AS deskripsi FROM h3
UNION
SELECT h4ID AS id_artikel, h4Judul AS judul, h4Ket AS deskripsi FROM h4) AS tbl where deskripsi <> ""
limit 0, 5'));

        return \Response::json($data, 200, array(), JSON_PRETTY_PRINT);
    }

    public function detail()
    {
        $id = Input::get('id');
        /*
        $data = DB::select(DB::raw('SELECT *, deskripsi AS plain_deskripsi FROM ( SELECT h1ID AS id_artikel, h1Judul AS judul, h1Ket AS deskripsi FROM h1
UNION
SELECT h2ID AS id_artikel, h2Judul AS judul, h2Ket AS deskripsi FROM h2
UNION
SELECT h3ID AS id_artikel, h3Judul AS judul, h3Ket AS deskripsi FROM h3) AS tbl where id_artikel ="' . $id . '"'));
*/
        $data = DB::table('artikel')
            ->where('id_artikel', '=', $id)
            ->first();
        
        $mazhab = DB::table('mazhab')
                    ->join('imam', 'imam.id_imam', '=', 'mazhab.id_imam')
                    ->where('id_artikel', '=', $data->id_artikel)->get();
        $data->plain_deskripsi = strip_tags($data->deskripsi);
        $data->mazhab = $mazhab;
    
        return \Response::json($data, 200, array(), JSON_PRETTY_PRINT);
    }

    public function cari()
    {
        $keyword = Input::get('keyword', '');
        /*
        $data = DB::select(DB::raw('SELECT * FROM ( SELECT h1ID AS id_artikel, h1Judul AS judul, h1Ket AS deskripsi FROM h1
UNION
SELECT h2ID AS id_artikel, h2Judul AS judul, h2Ket AS deskripsi FROM h2
UNION
SELECT h3ID AS id_artikel, h3Judul AS judul, h3Ket AS deskripsi FROM h3) AS tbl where  (deskripsi like "%' . $keyword . '%" or judul like "%' . $keyword . '%") and deskripsi is not null'));
*/
        $data = DB::table('artikel')
            ->where('judul', 'like', '%' . $keyword . '%')
            ->get();
            
        $result = [
            'artikel' => $data,
        ];

        return \Response::json($result, 200, array(), JSON_PRETTY_PRINT);
    }

    public function referensi()
    {
        $id = Input::get('id');
        $data = DB::select(DB::raw('SELECT refID AS id_referensi, concat(refID, ". ", isi) AS deskripsi FROM referensi where headingID = "' . $id . '"'));
        return \Response::json($data, 200, array(), JSON_PRETTY_PRINT);
    }

    function findKeyword($str, $query, $numOfWordToAdd)
    {
        /*
        try {
            list($before, $after) = explode($query, $str);
            $before = rtrim($before);
            $after  = ltrim($after);

            $beforeArray = array_reverse(explode(" ", $before));
            $afterArray  = explode(" ", $after);

            $countBeforeArray = count($beforeArray);
            $countAfterArray  = count($afterArray);

            $beforeString = "";
            if($countBeforeArray < $numOfWordToAdd) {
                $beforeString = implode(' ', $beforeArray);
            }
            else {
                for($i = 0; $i < $numOfWordToAdd; $i++) {
                    $beforeString = $beforeArray[$i] . ' ' . $beforeString;
                }
            }

            $afterString = "";
            if($countAfterArray < $numOfWordToAdd) {
                $afterString = implode(' ', $afterArray);
            }
            else {
                for($i = 0; $i < $numOfWordToAdd; $i++) {
                    $afterString = $afterString . $afterArray[$i] . ' ';
                }
            }

            $string = $beforeString . $query . ' ' . $afterString;

            return strip_tags($string);
        }catch (\Exception $e){
            return substr(strip_tags($str), 0, 200);
        }
        */
        return substr(strip_tags($str), 0, 200);
    }

    public function getMazhab()
    {
        //$data = DB::select(DB::raw('select id_mazhab, concat(urutan, " ", judul) as judul, deskripsi, imam from mazhab where imam ="' . $_GET['imam'] . '" order by id_mazhab asc'));

        $data = DB::table('mazhab')
                ->join('imam', 'imam.id_imam', '=', 'mazhab.id_imam')
                ->orderBy('id_mazhab')
                ->get();

        //return \Response::json($data[0], 200, array(), JSON_PRETTY_PRINT);

        $i = 0;
        for ($i = 0; $i < count($data); $i++){
            //$data[$i]->deskripsi =  trim(preg_replace('/\s\s+/', ' ', substr(strip_tags(html_entity_decode($data[$i]->deskripsi)), 0 ,200)));
            $data[$i]->isi_mazhab =  trim(preg_replace('/\s\s+/', ' ', substr(strip_tags(html_entity_decode($data[$i]->isi_mazhab)), 0 ,200)));
        }

        return \Response::json($data, 200, array(), JSON_PRETTY_PRINT);
    }

    public function getDetailMazhab()
    {
        $id = $_GET['id'];
        $data = DB::select(DB::raw('select * from mazhab where id_mazhab = "' . $id . '"'));
        if (count($data) > 0){
            $data[0]->plain_deskripsi = strip_tags(html_entity_decode($data[0]->deskripsi));
        }

        return \Response::json($data[0], 200, array(), JSON_PRETTY_PRINT);
    }

    public function getTag()
    {
        $data = DB::table('tag')
            ->orderBy('nama_tag')->get();
        return response()->json($data);
    }
}