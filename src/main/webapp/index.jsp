<%-- 
    Document   : index
    Created on : 26/06/2022, 05:36:54 PM
    Author     : carlo
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.88.1">
        <title>Reporte Anual</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/album/">
        <!-- Estilos css -->
        <link rel="stylesheet" type="text/css" href="css/estilos.css">  

        <!-- Bootstrap de CSS -->
        <link rel="stylesheet" type="text/css" href="tools/bootstrap-5.1.3-dist/css/bootstrap.min.css"/>

        <!--Poner logo de google Fontawesome -->
        <link rel="stylesheet" type="text/css" href="tools/fontawesome-free-6.1.1-web/css/all.css">

        <!--Poner el logo de la pagina -->
        <link rel="icon" href="img/logo.png">
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg custom navbar-light">
                <div class="container-fluid">
                    <a class="navbar-brand text-light" href="index.jsp">UNPA</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-light" href="" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Docencia
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <li><a class="dropdown-item" href="CursoLst.jsp">Cursos impartidos</a></li>
                                    <li><a class="dropdown-item" href="ProductoLst.jsp">Productos</a></li>
                                    <li><a class="dropdown-item" href="AsignaturaLst.jsp">Asignaturas con mayor afinidad</a></li>
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
        </header>

        <main>
            <div class="py-5">
                <div class="container">
                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                        <div class="col">
                            <div class="card shadow-sm">
                                <div class="card btn-open-seccion">
                                    <img src="img/ed.png" class="card-img-top" alt=" ">
                                </div>
                                <div class="card-body">
                                    <p class="card-text">Docencia</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group btn-open-seccion">
                                            <button type="button" class="text-light btn btn-sm btn-outline-secondary" onclick="location.href = 'seccion_docencia.html';">Ver sección</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card shadow-sm">
                                <div class="card" style="width: 100%;">
                                    <img src="img/unpa.png" class="card-img-top" alt="">
                                </div>
                                <div class="card-body">
                                    <p class="card-text">Formación de recursos humanos</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group btn-open-seccion">
                                            <button  type="button" class="text-light btn btn-sm btn-outline-secondary" onclick="location.href = ' ';">Ver sección</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card shadow-sm">
                                <div class="card" style="width: 100%;">
                                    <img src="img/unpa.png" class="card-img-top" alt=" ">
                                </div>
                                <div class="card-body">
                                    <p class="card-text">Investigación y/o promoción al desarrollo</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group btn-open-seccion">
                                            <button type="button" class="text-light btn btn-sm btn-outline-secondary">Ver sección</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card shadow-sm">
                                <div class="card" style="width: 100%;">
                                    <img src="img/unpa.png" class="card-img-top" alt=" ">
                                </div>
                                <div class="card-body">
                                    <p class="card-text">Gestión académica</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group btn-open-seccion">
                                            <button type="button" class="text-light btn btn-sm btn-outline-secondary">Ver sección</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card shadow-sm">
                                <div class="card" style="width: 100%;">
                                    <img src="img/unpa.png" class="card-img-top" alt=" ">
                                </div>
                                <div class="card-body">
                                    <p class="card-text">Difusión</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group btn-open-seccion mb">
                                            <button type="button" class="text-light btn btn-sm btn-outline-secondary">Ver sección</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>


        <script src="./tools/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>