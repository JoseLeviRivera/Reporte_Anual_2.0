<%-- 
    Document   : Login
    Created on : 26/06/2022, 03:47:48 PM
    Author     : Jose Levi
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login!</title>

        <!-- Bootstrap de CSS -->
        <link rel="stylesheet" type="text/css" href="tools/bootstrap-5.1.3-dist/css/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="tools/bootstrap-5.1.3-dist/css/bootstrap.min.css"/>

        <!-- Mis estilos -->
        <link rel="stylesheet" type="text/css" href="css/style.css">

        <!--Tipografia de google-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@300&display=swap" rel="stylesheet">

        <!--Poner logo de google Fontawesome -->
        <link rel="stylesheet" type="text/css" href="tools/fontawesome-free-6.1.1-web/css/all.css">

        <!--Poner el logo de la pagina -->
        <link rel="icon" href="img/logo.png">

    </head>
    <body class="bg-dark">
        <section>
            <!--g-0 quita el sckroll de abajo-->
            <div class="row g-0">
                <div class="col-lg-7">
                    <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100 img-fluid" src="img/2.jpg" alt="First slide" id="imagen-ventana">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <!--
                            px-lg-5 : padding a los lados 
                            pt-lg-4: padding superior 
                            pb-lg-3: padding inferior 
                            p-4: 
                    
                    <div class="px-lg-5 pt-lg-4 pb-lg-3 p-4">
                            <img src="../img/deporte.jpg" class="img-fluid">
                    </div>
                    -->

                    <div class="px-lg-5 py-lg-4 p-4">
                        <img src="img/logo.png" alt="Logotipo" style="width:25%" class="mx-auto d-block">
                        <h1 class="font-weight-bold mb-4 text-center">�Bienvenido!</h1>

                        <form class="mb-5" action="Controller?action=UsuarioQry" method="post">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label font-weight-bold">Email</label>
                                <input type="email" class="form-control bg-dark-x border-0" placeholder="Ingresa tu email" id="exampleInputEmail" name="mail" arial-describedby="emailHelp">
                                <!--
                                <div id="emailHelp" class="form-text">We 'll never share your email with anyone else</div>
                                -->
                            </div>

                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label font-weight-bold">Contrase�a</label>
                                <input type="password" class="form-control bg-dark-x border-0 mb-2" placeholder="Ingresa tu Contrase�a" id="exampleInputPassword1" name="password" arial-describedby="emailHelp">
                                <a href="#" id="emailHelp" class="form-text text-muted text-decoration-none">�Has olvidado tu contrase�a?</a>
                            </div>

                            <div class="mb-3">
                                <!--w-100 es para que se vea mas ancho el boton de iniciar sesion -->
                                <button type="submit" class="btn btn-primary w-100">Iniciar Sesi�n</button>
                            </div>
                            <!--
                                    text-muted: color gris.
                                    text-center: para centrar el texto
                                    mr-2: margen a la derecha
                            -->
                            <p class="font-weight-bold text-center text-muted">O iniciar sesi�n con</p>
                            <div class="d-flex justify-content-around">
                                <a id="btnGoogle" class="btn btn-outline-light flex-grow-1 mr-2 w-100"><i class="fa-brands fa-google"></i> Google</a>
                            </div>
                            </br>
                            <p class="font-weight-bold text-center text-muted">�No cuentas con una cuenta? <a href="RegistrarUsuario.jsp"> Registrarse<a></p>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <script src="js/cambiarImagen.js"></script>
    </body>
</html>
