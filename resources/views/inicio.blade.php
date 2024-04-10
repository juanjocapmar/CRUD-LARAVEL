@extends('layout/plantilla')

@section('tituloPagina' , 'Crud con laravel 8')


@section('contenido')
    <div class="card">
        <div class="card-header">
        CRUD CON LARAVEL 8 Y MYSQL
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                    @if ($mensaje = Session::get('success'))
                        <div class="alert alert-success" role="alert">
                            {{ $mensaje }}
                        </div>

                    @endif
                </div>
            </div>
            <h5 class="card-title">Listado de personas en laravel</h5>
            <p>
                <a href="{{ route("personas.create")}}" class="btn btn-primary">Añadir persona</a>
            </p>
            <p class="card-text">
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
                        @foreach ($datos as $item)
                            <tr>
                                <td>{{ $item -> id}}</td>
                                <td>{{ $item -> nombre}}</td>
                                <td>{{ $item -> paterno}}</td>
                                <td>{{ $item -> materno}}</td>
                                <td>{{ $item -> fecha_nacimiento}}</td>
                                <td>
                                    <!--<form action="{{ route("personas.edit") , $item -> id }}" method="GET">
                                        <a href="#" class>Editar</a>
                                    </form>-->                
                                </td>
                                <td><a href="{{ route("personas.show") }}">Eliminar</a></td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </p>
        </div>
    </div>
@endsection