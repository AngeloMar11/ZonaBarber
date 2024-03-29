<%@ page import="java.util.*,java.time.format.*,org.ZonaBarber.webapp.models.beans.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%Clientes clientes = (Clientes) request.getAttribute("clientes");%>
<!DOCTYPE html>
<html>
<head>
    <title>Formulario de Registro</title>
</head>
<body>
<h2>Registro de Usuario</h2>
<form action="<%=request.getContextPath()%>/Registro-Clientes" method="post">
    <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" value="<%=clientes != null && clientes.getNombre() != null ? clientes.getNombre() : ""%>"><br><br>

    <label for="apellido">Apellido:</label>
    <input type="text" id="apellido" name="apellido"><br><br>

    <label for="direccion">Dirección:</label>
    <input type="text" id="direccion" name="direccion"><br><br>

    <label for="identificacion">Identificación:</label>
    <input type="text" id="identificacion" name="identificacion"><br><br>

    <label for="tipo_identificacion">Tipo de Identificación:</label>
    <input type="text" id="tipo_identificacion" name="tipo_identificacion"><br><br>

    <label for="celular">Celular:</label>
    <input type="text" id="celular" name="celular"><br><br>

    <label for="correo">Correo Electrónico:</label>
    <input type="email" id="correo" name="correo"><br><br>

    <label for="contraseña">Contraseña:</label>
    <input type="password" id="contraseña" name="contraseña"><br><br>

    <input type="submit" value="Registrarse">
</form>
</body>
</html>