<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Form Registrasi</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-box {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 400px;
        }

        .form-box h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-box label {
            display: block;
            margin-bottom: 5px;
        }

        .form-box input[type="text"],
        .form-box input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .form-box input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .form-box input[type="submit"]:hover {
            background-color: #0056b3;
            cursor: pointer;
        }

        .login-link {
            text-align: center;
            margin-top: 15px;
        }

        .login-link a {
            text-decoration: none;
            color: #007bff;
        }
    </style>
</head>
<body>
    <div class="form-box">
        <h2>Registrasi Pengguna</h2>
        <form action="RegisterServlet" method="post">
            <label>Username:</label>
            <input type="text" name="username" required>

            <label>Password:</label>
            <input type="password" name="password" required>

            <label>Konfirmasi Password:</label>
            <input type="password" name="confirmPassword" required>

            <input type="submit" value="Daftar">
        </form>
        <div class="login-link">
            <p>Sudah punya akun? <a href="login.jsp">Login di sini</a></p>
        </div>
    </div>
</body>
</html>
