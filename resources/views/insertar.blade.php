@extends('layout/plantilla');


@section("tituloPagina" , "Crear nuevo registro");



@section("contenido") 
    <div class="card">
        <div class="card-header">
            Agregar nueva persona
        </div>
            
            <p class="card-text">
                <form action="{{ route('personas.store') }}" method="POST">
                    @csrf
                    <label for="">Nombre</label>
                    <input type="text" name="nombre"  class="form-control" required> 
                    <label for="">Primer Apellido</label>
                    <input type="text" name="materno"  class="form-control" required> 
                    <label for="">Segundo Apellido</label>
                    <input type="text" name="paterno"  class="form-control" required> 
                    <label for="">Fecha nacimiento</label>
                    <input type="date" name="fecha_nacimiento"  class="form-control" required> 
                    <br>
                    <a href="{{ route("personas.index" )}}" class="btn btn-info">Regresar</a>
                    <input type="submit" class="btn btn-primary">
                    
                </form>
            </p>
            
        </div>
    </div>


@endsection