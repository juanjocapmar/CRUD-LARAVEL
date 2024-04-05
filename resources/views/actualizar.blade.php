@extends('layout/plantilla');


@section("tituloPagina" , "Crear nuevo registro");



@section("contenido") 
    <div class="card">
        <div class="card-header">
            Agregar nueva persona
        </div>
            
            <p class="card-text">
                <form action="#">
                    <label for="">Nombre</label>
                    <input type="text" name="nombre"  class="form-control" required> 
                    <label for="">Primer Apellido</label>
                    <input type="text" name="1apellido"  class="form-control" required> 
                    <label for="">Segundo Apellido</label>
                    <input type="text" name="2apellido"  class="form-control" required> 
                    <label for="">Fecha nacimiento</label>
                    <input type="date" name="fecha_nacimiento"  class="form-control" required> 
                    <br>
                    <a href="{{ route("personas.index" )}}" class="btn btn-info">Regresar</a>
                    <input type="submit" class="btn btn-primary" value="Actualizar">
                    
                </form>
            </p>
            
        </div>
    </div>


@endsection