package Servlets;

import Beans.JuegoPostAdmin;
import Beans.Juegos;
import Daos.JuegoPostAdminDao;
import Daos.JuegosDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "MainServlet",urlPatterns = {"/mainservlet"})
public class MainServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JuegoPostAdminDao juegoPosteadoDao = new JuegoPostAdminDao();
        ArrayList<JuegoPostAdmin> listaJuegosPosteados = juegoPosteadoDao.obtenerListaJuegosPosteados();

        request.setAttribute("listaJuegosPosteados", listaJuegosPosteados);


        RequestDispatcher view =request.getRequestDispatcher("principal_admin.jsp");
        view.forward(request,response);
    }
}
