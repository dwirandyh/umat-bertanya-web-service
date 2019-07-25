<?php
/**
 * Created by PhpStorm.
 * User: Febrian Reza
 * Date: 21-Nov-17
 * Time: 10:27 AM
 */

namespace App\Http\Controllers;

use DB;
use Illuminate\Support\Facades\Input;

class ImamController extends Controller
{
    public function imam()
    {
        $data = \DB::table('imam')->get();
        return \Response::json($data, 200, array(), JSON_PRETTY_PRINT);
    }

    public function detail()
    {
        $id = Input::get('id');
        $data = \DB::select(DB::raw('SELECT * FROM imam where id_imam = "' . $id . '"'));
        return \Response::json($data, 200, array(), JSON_PRETTY_PRINT);
    }
}