package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String user = request.getParameter("username");
        String pass = request.getParameter("password");

        // Validasi berdasarkan user yang didaftarkan
        String storedPass = RegisterServlet.users.get(user);
        if (storedPass != null && storedPass.equals(pass)) {
            request.setAttribute("username", user);
            RequestDispatcher rd = request.getRequestDispatcher("Dashboard.jsp");
            rd.forward(request, response);
        } else {
            response.getWriter().println("Login gagal! Username atau password salah.");
        }
    }
}
