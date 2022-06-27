<%-- 
    Document   : actualizarCurso
    Created on : 27/06/2022, 12:40:22 AM
    Author     : carlo
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Editar Curso</title>
        <!-- CSS -->
        <link rel="stylesheet" type="text/css" href="css/estilos.css">

        <!-- Bootstrap -->
        <link rel="stylesheet" type="text/css" href="./bootstrap-5.1.3-dist/css/bootstrap.min.css">

        <!--Poner logo de google Fontawesome -->
        <link rel="stylesheet" type="text/css" href="./fontawesome-free-6.1.1-web/css/all.css">

        <!--Poner el logo de la pagina -->
        <link rel="icon" href="./img/logo.png">
    </head>
    <body>
        <!-- Barra de navegación -->
        <nav class="navbar navbar-expand-lg custom navbar-light">
            <div class="container-fluid">
                <a class="navbar-brand text-light" href="contenido.html">UNPA</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span>
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



        <div class="container">
            <h4 style="text-align:center" class="mt-2">Editar Curso</h4>
            <form action="cursos_impartidos.html">
                <div class="mb-2 mt-3">
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
                <div class="mb-2">
                    <label class="col-form-label">Asignatura:</label>
                    <input type="text" class="form-control" id=" ">
                </div>
                <div class="mb-2">
                    <label class="col-form-label">Semestre:</label>
                    <input type="text" class="form-control" id=" ">
                </div>
                <div class="mb-2">
                    <label class="col-form-label">Ciclo-escolar:</label>
                    <input type="text" class="form-control" id=" ">
                </div>
                <div class="mb-2">
                    <label class="col-form-label">Horas por semana:</label>
                    <input type="text" class="form-control" id=" ">
                </div>
                <div class="mb-2">
                    <label class="col-form-label">Número de alumnos:</label>
                    <input type="text" class="form-control" id=" ">
                </div>
                <button type="submit" class="btn btn-success">Actualizar</button>
            </form> 
        </div>




        <script src="./tools/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>