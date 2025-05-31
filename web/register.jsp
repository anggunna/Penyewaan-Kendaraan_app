<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<h2>Register</h2>
<form action="register" method="post">
    <input type="text" name="name" placeholder="Nama" required /><br>
    <input type="email" name="email" placeholder="Email" required /><br>
    <input type="password" name="password" placeholder="Password" required /><br>
    <button type="submit">Daftar</button>
</form>
<% if (request.getParameter("error") != null) { %>
    <p style="color:red;">Registrasi gagal!</p>
<% } %>
