<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZonaBarber</title>

    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">


    <link rel="stylesheet" href="estilos.css">
</head>
<body>

<main>

    <div class="contenedor__todo">

        <div class="caja__trasera">

            <img id="Fondo" src="img/LogoZonaBarber.png" >

            <div class="caja__trasera-login">

                <h3> ¿Ya tienes una cuenta?</h3>
                <p>Inicia sesión para entrar en la página</p>
                <button id="btn__iniciar-sesion">Iniciar Sesión</button>

            </div>



            <div class="caja__trasera-register">
                <h3>¿Aún no tienes una cuenta?</h3>
                <p>Regístrate para que puedas iniciar sesión</p>
                <button id="btn__registrarse">Regístrarse</button>
            </div>
            <img id="Fondo1" src="img/LogoZonaBarber.png" >

        </div>

        <!--Formulario de Login y registro-->
        <div class="contenedor__login-register">
            <!--Login-->
            <form  class="formulario__login">
                <h2>Iniciar Sesión</h2>
                <input type="text" placeholder="Correo Electronico">
                <input type="password" placeholder="Contraseña">

                <a href="HoneAdmin/HomeAdmin.html"></a><button>Entrar</button></a>
            </form>

            <!--Register-->
            <form method="post" action="Servlet" class="formulario__register">
                <h2>Regístrarse</h2>
                <input name="txtnombre" type="text" placeholder="Nombre">
                <input name="txtapellido" type="text" placeholder="Apellido">
                <input name="txtdireccion" type="text" placeholder="Direccion">
                <input name="txttipo_Identificacion" type="text" placeholder="Tipo de identificación" name="example" list="ex">
                <datalist name="exampleList">
                    <option value="Tarjeta de identidad">
                    <option value="Cédula">
                    <option value="Cédula Extranjera"></option>
                </datalist>
                <input name="txtidentificacion" type="text" placeholder="Número de indentificación">
                <input name="txtcelular" type="text" placeholder="Télefono">
                <input name="txtcorreo" type="email" placeholder="Correo Electronico">
                <input name="txtcontraseña" type="password" placeholder="Contraseña">
                <button name="Servlet" value="Ingresar"> Regístrarse</button>
            </form>
        </div>
    </div>

</main>

<script src="scripts.js"></script>
</body>
</html>