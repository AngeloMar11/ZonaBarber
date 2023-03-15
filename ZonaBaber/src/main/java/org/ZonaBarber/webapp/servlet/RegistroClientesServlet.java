package org.ZonaBarber.webapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.ZonaBarber.webapp.models.beans.Clientes;
import org.ZonaBarber.webapp.models.services.ClientesServices;
import org.ZonaBarber.webapp.models.services.ClientesServicesJdbcImpl;

import java.io.IOException;
import java.sql.*;

@WebServlet("/Registro-Clientes")
public class RegistroClientesServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Connection conn = (Connection) req.getAttribute("conn");

        ClientesServices Cservice = new ClientesServicesJdbcImpl(conn);

        String nombre = req.getParameter("nombre");
        String apellido = req.getParameter("apellido");
        String direccion = req.getParameter("direccion");
        String identificacion = req.getParameter("identificacion");
        String tipo_identificacion = req.getParameter("tipo_identificacion");
        String celular = req.getParameter("celular");
        String correo = req.getParameter("correo");
        String contraseña = req.getParameter("contraseña");

        Clientes clientes = new Clientes();

        clientes.setNombre(nombre);
        clientes.setApellido(apellido);
        clientes.setDireccion(direccion);
        clientes.setIdentificacion(identificacion);
        clientes.setTipo_identificacion(tipo_identificacion);
        clientes.setCelular(celular);
        clientes.setCorreo(correo);
        clientes.setContraseña(contraseña);



        Cservice.guardar(clientes);
       // resp.sendRedirect("incio.jsp");


    }


}
