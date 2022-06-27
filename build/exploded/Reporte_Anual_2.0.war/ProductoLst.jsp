<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Productos Académicos</title>

        <!-- CSS -->
        <link rel="stylesheet" type="text/css" href="css/estilos.css">

        <!-- Bootstrap -->
        <link rel="stylesheet" type="text/css" href="./tools/bootstrap-5.1.3-dist/css/bootstrap.min.css">

        <!--Poner logo de google Fontawesome -->
        <link rel="stylesheet" type="text/css" href="./tools/fontawesome-free-6.1.1-web/css/all.css">

        <!--Poner el logo de la pagina -->
        <link rel="icon" href="./img/logo.png">
    </head>
    <body>
        <!-- Barra de navegación! -->
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
        <!-- Final barra de navegación! -->
        <!-- Tabla -->
        <div class="container">
            <div class="table-responsive">
                <table class="table caption-top ">
                    <caption>1.2 Productos de las actividades de apoyo docente realizadas</caption>
                    <thead>
                        <tr>
                            <th scope="col">Número de curso</th>
                            <th scope="col">Descripción de los productos de las actividades</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${model}" var="producto">
                            <tr>
                                <td><c:out value="${ producto.num }" /></td>
                                <td><c:out value="${ producto.descripcion }" /></td>      
                                <td><a href="actualizarProducto.jsp"/><i class="fa-solid fa-pencil"></a></td>
                                <td><a href="Controller?action=CursoDel&id_Materia=<c:out value="${cursoImpartidos.materia.id_Materia}"/><i class="fa-solid fa-trash"></a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>



        <script src="./tools/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>