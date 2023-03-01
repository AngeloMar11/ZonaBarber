package co.zonabarber.javawebZonaBarber.servlet;

import co.zonabarber.javawebZonaBarber.model.beans.User;
import co.zonabarber.javawebZonaBarber.model.repository.UserRepositoryImp;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletControlador", value = "/ServletControlador")
public class ServletControlador extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            List<User> usuarios = new UserRepositoryImp().listAll();
            System.out.println("Usuarios = "+ usuarios);
            request.setAttribute("Usuarios = ", usuarios);
            request.getRequestDispatcher("login.jsp").forward(request,response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    /*
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    */
    }

