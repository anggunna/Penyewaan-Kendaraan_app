<%@ page import="model.User" %>
<%
    HttpSession Session = request.getSession(false);

    if (session == null || session.getAttribute("currentUser") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    User user = (User) session.getAttribute("currentUser");
%>

<h2>Selamat datang, <%= user.getName() %>!</h2>
<p>Ini adalah halaman dashboard Anda.</p>
