package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;

public class RegisterServlet extends HttpServlet {
    public static HashMap<String, String> users = new HashMap<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirm = request.getParameter("confirmPassword");

        if (!password.equals(confirm)) {
            response.getWriter().println("Password dan konfirmasi tidak cocok!");
            return;
        }

        if (users.containsKey(username)) {
            response.getWriter().println("Username sudah digunakan!");
            return;
        }

        users.put(username, password);
        response.sendRedirect("login.jsp");
    }
}
