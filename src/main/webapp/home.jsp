<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="Dao.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        .user-card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            width: 300px;
            margin: 20px auto;
        }

        p {
            color: #555;
        }

        button {
            background-color: #ff0000;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <%
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    String username = (String) request.getSession().getAttribute("username");
    String firstName = "";
    String lastName = "";
    String mobile = "";
    String gender = "";
    String address = "";

    if (username == null) {
        response.sendRedirect("login.jsp");
    } else {
        Dao.login_Authentication_Dao dao = new Dao.login_Authentication_Dao();
        dao.connet();
        User user = dao.getUserDataByUsername(username);
        if (user != null) {
            firstName = user.getFirstName();
            lastName = user.getLastName();
            mobile = user.getMobile();
            gender = user.getGender();
            address = user.getAddress();
        }
    }
    %>
    <div class="user-card">
        <h1>Welcome, <%= firstName + " " + lastName %></h1>
        <p>First Name: <%= firstName %></p>
        <p>Last Name: <%= lastName %></p>
        <p>Mobile: <%= mobile %></p>
        <p>Gender: <%= gender %></p>
        <p>Address: <%= address %></p>
        <form action="logout">
            <button type="submit">Logout</button>
        </form>
    </div>
</body>
</html>
