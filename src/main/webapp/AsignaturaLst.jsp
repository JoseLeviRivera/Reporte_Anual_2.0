<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Asignaturas con mayor afinidad curricular</title>

        <!-- CSS -->
        <link rel="stylesheet" type="text/css" href="assets/css/estilos.css">

        <!-- Bootstrap -->
        <link rel="stylesheet" type="text/css" href="./tools/bootstrap-5.1.3-dist/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="./tools/bootstrap-5.1.3-dist/css/bootstrap.min.css">

        <!--Poner logo de google Fontawesome -->
        <link rel="stylesheet" type="text/css" href="tools/fontawesome-free-6.1.1-web/css/all.css">

        <!--Poner el logo de la pagina -->
        <link rel="icon" href="img/logo.png">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg custom navbar-light">
            <div class="container-fluid">
                <a class="navbar-brand text-light" href="contenido.html">UNPA</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Docencia
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="cursos_impartidos.html">Cursos impartidos</a></li>
                                <li><a class="dropdown-item" href="productos.html">Productos</a></li>
                                <li><a class="dropdown-item" href="asignatura_mayor_afinidad.html">Asignaturas con mayor afinidad</a></li>
                            </ul>
                        </li> 
                        <!-- Formación de recursos humanos -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Formación de recursos humanos
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="#">Tutorías</a></li>
                                <li><a class="dropdown-item" href="#">Dirección de tesis</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Investigación y/o promoción al desarrollo
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Proyectos de investigación</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Publicación de articulos</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Promoción al desarrollo</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active text-light" href="#">Gestión académica</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active text-light" href="#">Difusión</a>
                        </li>
                    </ul>
                    <label class="d-flex nav-link disabled text-light">M.C. Ariel López Rodríguez</label>
                </div>
            </div>
        </nav>
        <!-- tabla -->
        <div class="container">                                                                                      
            <div class="table-responsive">          
                <table class="table caption-top">
                    <caption>1.3 Asignaturas con las que presenta mayor afinidad curricular y experiencia profesional</caption>
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Carrera</th>
                            <th>Asignatura</th>
                            <th>Semestre</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>1</th>
                            <td>Ingeniería en computación</td>
                            <td>POO</td>
                            <td>3</td>
                            <td><a href="actualizarAsignatura.html"/><i class="fa-solid fa-pencil"></a></td>
                            <td><a href=" "/><i class="fa-solid fa-trash"></a></td>
                        </tr>
                        <tr>
                            <th>2</th>
                            <td>Ingeniería en computación</td>
                            <td>Redes de computadoras</td>
                            <td>6</td>
                            <td><a href="actualizarAsignatura.html"/><i class="fa-solid fa-pencil"></a></td>
                            <td><a href=""/><i class="fa-solid fa-trash"></a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>    

        <!-- Button trigger modal -->
        <div class=" container d-flex justify-content-end">
            <button type="button" class=" btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal">
                <i class="fa-solid fa-plus"></i>  
            </button>
        </div><!-- Termina el boton -->

        <!-- Modal -->
        <div class="modal fade " id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h5 class="modal-title" id="exampleModalLabel">Agregar asignatura</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="">
                            <div class="mb-3">
                                <label class="col-form-label">Carrera:</label>
                                <select class="form-control" name="Carrera" id="Carrera">
                                    <option value="seleccionar">--Seleccionar--</option>
                                    <option value="Computacion">Ingeniería en Computación</option>
                                    <option value="Mecatronica">Ingeniería en Mecatrónica</option>
                                    <option value="Acuicultura">Ingeniería en Acuicultura</option>
                                    <option value="Agricola">Ingeniería en Agrícola Tropical</option>
                                    <option value="Disenio">Ingeniería en Diseño Gráfico</option>
                                    <option value="Matematicas">Licenciatura en Matemáticas</option>
                                    <option value="Zootecnia">Licenciatura en Zootecnia</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="col-form-label">Asignatura:</label>
                                <input type="text" class="form-control" id=" ">
                            </div>
                            <div class="mb-3">
                                <label class="col-form-label">Semestre:</label>
                                <input type="text" class="form-control" id=" ">
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-success">Guardar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script src="./tools/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>