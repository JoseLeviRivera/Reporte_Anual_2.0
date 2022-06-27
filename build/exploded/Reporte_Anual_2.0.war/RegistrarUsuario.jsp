<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Registro de Usuario</title>

        <!--Tipografia de google-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@300&display=swap" rel="stylesheet">

        <!--Poner logo de google Fontawesome -->
        <link rel="stylesheet" type="text/css" href="tools/fontawesome-free-6.1.1-web/css/all.css">

        <!--Poner el logo de la pagina -->
        <link rel="icon" href="img/logo.png">
    </head>
    <body>
        <form action="Controller?action=UsuarioAdd" method="post">
            <label>Usuario: </label>
            </br>
            <input type="text" name="usuario" placeholder="Ingrese el usuario"/>
            </br>
            <label>Correo: </label>
            </br>
            <input type="text" name="mail" placeholder="Ingrese el correo">
            </br>
            <label>Contraseña: </label>
            </br>
            <input type="password" name="password" placeholder="Ingrese la contraseña">
            </br>
            <label>Repterir contraseña: </label>
            </br>
            <input type="password" name="password-Repeat" placeholder="Ingrese de nuevo la contraseña" >
            </br>
            <input type="submit" value="Registrar">
        </form>
    </body>
</html>
