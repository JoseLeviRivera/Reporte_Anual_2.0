<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Cursos Impartidos</title>
        <!-- CSS -->
        <link rel="stylesheet" type="text/css" href="css/estilos.css">

        <!-- Bootstrap -->
        <link rel="stylesheet" type="text/css" href="tools/bootstrap-5.1.3-dist/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="tools/bootstrap-5.1.3-dist/css/bootstrap.min.css">

        <!--Poner logo de google Fontawesome -->
        <link rel="stylesheet" type="text/css" href="tools/fontawesome-free-6.1.1-web/css/all.css">

        <!--Poner el logo de la pagina -->
        <link rel="icon" href="img/logo.png">
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
        <!-- tabla -->
        <div class="container">                                                                                      
            <div class="table-responsive">          
                <table class="table caption-top">
                    <h4 style="text-align: center">Lista de cursos impartidos</h4>
                    <thead>
                        <tr class="table-success">
                            <th>No.</th>
                            <th>Carrera</th>
                            <th>Semestre</th>
                            <th>Asignatura</th>
                            <th>Ciclo escolar</th>
                            <th>Horas por semana</th>
                            <th>Total de alumnos</th>
                            <th>Subseccion</th>
                            <th> </th>
                            <th> </th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${model}" var="cursoImpartidos">
                            <tr>
                                <th><c:out value="${cursoImpartidos.materia.id_Materia}" /></th>
                                <td><c:out value="${cursoImpartidos.materia.carrera}" /></td>
                                <td><c:out value="${cursoImpartidos.materia.semestre}" /></td>
                                <td><c:out value="${cursoImpartidos.materia.asignatura}" /></td>
                                <td><c:out value="${cursoImpartidos.materia.cicloEscolar}" /></td>
                                <td><c:out value="${cursoImpartidos.horasPorSemana}" /></td>
                                <td><c:out value="${cursoImpartidos.totalAlumnos}" /></td>
                                <td><c:out value="${cursoImpartidos.subseccion}" /></td>
                                <td><a href="Controller?action=CursoQry&id_Materia=<c:out value="${cursoImpartidos.materia.id_Materia}"/>" ><i class="fa-solid fa-pencil"></a></td>
                                <td><a href="Controller?action=CursoDel&id_Materia=<c:out value="${cursoImpartidos.materia.id_Materia}"/>" ><i class="fa-solid fa-trash"></a></td>
                            </tr>
                        </c:forEach>
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


        <!-- Modal de registrar -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Cursos impartidos</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="Controller?action=CursoAdd" method="post">
                            <div class="mb-2 mt-2">
                                <label class="col-form-label">Carrera:</label>
                                <select class="form-control" name="Carrera" id="Carrera">
                                    <option value="seleccionar">--Seleccionar--</option>
                                    <option value="Ingeniería en Computación">Ingeniería en Computación</option>
                                    <option value="Ingeniería en Mecatrónica">Ingeniería en Mecatrónica</option>
                                    <option value="Ingeniería en Acuicultura">Ingeniería en Acuicultura</option>
                                    <option value="Ingeniería en Agrícola Tropical">Ingeniería en Agrícola Tropical</option>
                                    <option value="Ingeniería en Diseño">Ingeniería en Diseño</option>
                                    <option value="Licenciatura en Matemáticas">Licenciatura en Matemáticas</option>
                                    <option value="Licenciatura en Zootecnia">Licenciatura en Zootecnia</option>
                                </select>
                            </div>
                            <div class="mb-2">
                                <label class="col-form-label">Asignatura:</label>
                                <input type="text" class="form-control" id=" " name="asignatura">
                            </div>
                            <div class="mb-2">
                                <label class="col-form-label">Semestre:</label>
                                <input type="text" class="form-control" id=" " name="semestre">
                            </div>
                            <div class="mb-2">
                                <label class="col-form-label">Ciclo-escolar:</label>
                                <input type="text" class="form-control" id=" " name="CicloEscolar" >
                            </div>
                            <div class="mb-2">
                                <label class="col-form-label">Horas por semana:</label>
                                <input type="text" class="form-control" id=" " name="horasPorSemana">
                            </div>
                            <div class="mb-2">
                                <label class="col-form-label">Número de alumnos:</label>
                                <input type="text" class="form-control" id=" " name="numerosAlumnos">
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" data-bs-dismiss="modal" value="Registrar" >
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="./tools/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script
    </body>
</html>