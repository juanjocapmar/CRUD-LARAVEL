<?php

namespace App\Http\Controllers;

use App\Models\Personas;
use Illuminate\Http\Request;

class PersonasController extends Controller
{
    
    public function index()
    {
        // Es el metodo principal de la página 
        $datos = Personas::all();
        return view('inicio' , compact('datos'));
    }

    
    public function create()
    {
        // el formulario , para agregar datos

        return view('insertar');
    }

   
    public function store(Request $request)
    {
        // sirve para guardar datos en la db
        $personas = new Personas();

        $personas -> nombre = $request -> post('nombre');
        $personas -> materno = $request -> post('materno');
        $personas -> paterno = $request -> post('paterno');
        $personas -> fecha_nacimiento = $request -> post('fecha_nacimiento');
        $personas -> save();

        return redirect() -> route("personas.index") -> with("success"  , "Agregado con exito!");
    }

    
    public function show(Personas $personas)
    {
        // obtendra un registro de nuestra tabla
        return view('eliminar');
    }

    
    public function edit($id)
    {
        // trae los datos que se van a editar y los coloca en un formulario
        echo $id;
        //return view("actualizar");
    }

    
    public function update(Request $request, Personas $personas)
    {
        // este metodo actualiza los datos en la bd
    }

   
    public function destroy(Personas $personas)
    {
        // elimina un registro 
    }
}
