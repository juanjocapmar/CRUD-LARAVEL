@extends('layout/plantilla');


@section("tituloPagina" , "Crear nuevo registro");



@section("contenido") 
    <div class="card">
        <div class="card-header">
            Eliminar una persona
        </div>
            
            <p class="card-text">
                <div class="alert alert-danger" role="alert">
                    Estas seguro de eliminar este registro!!!
                </div>

                    <div class="table table-responsive">
                        <table class="table table-light">
                            <thead>
                                <td>Id</td>
                                <td>Nombre</td>
                                <td>Paterno</td>
                                <td>Materno</td>
                                <td>Fecha Nacimiento</td>
                                <td>Editar</td>
                                <td>Eliminar</td>
                            </thead>
                            <tbody>
                            
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><a href="">Editar</a></td>
                                    <td><a href="">Eliminar</a></td>
                                </tr>
                            
                            </tbody>
                        </table>
                        <a href="{{ route('personas.index') }}" class="btn btn-info">Regresar</a>
                        <button class="btn btn-danger">Eliminar </button>
                    </div>
                
            </p>
            
        </div>
    </div>


@endsection