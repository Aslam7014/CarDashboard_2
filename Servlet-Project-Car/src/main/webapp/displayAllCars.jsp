<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car List</title>
<style>
/* CSS styles */
@font-face {
    font-family: 'Magneto';
    src: url('fonts/Magneto.woff') format('woff'),
         url('fonts/Magneto.ttf') format('truetype');
    font-weight: normal;
    font-style: normal;
}

body {
    font-family: Arial, sans-serif;
    background-image: url('c3.jpg'); /* Replace 'c3.jpg' with the actual path to your image file */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    margin: 0;
    padding: 0;
    height: 100vh;
}

.container {
    max-width: 900px;
    margin: 70px auto;
    padding: 70px;
    background-color: rgba(255, 255, 255, 0.5); /* Less white for better readability */
    border-radius: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table {
    width: 100%;
   /* border-collapse: collapse; /* Remove white borders */
    margin-bottom: 20px;
}

th, td {
    padding: 8px;
    border: none; /* Remove border lines */
}

th {
    background-color: rgba(300, 300, 300, 1.0);
    font-weight: bold;
    text-align: left;
}

tr:nth-child(even) {
    background-color: rgba(200, 200, 200, 0.5); /* Light transparent background for even rows */
}

a {
    text-decoration: none;
    color: inherit; /* Inherit color from parent */
    margin-right: 10px;
    font-family: 'Magneto', Arial, sans-serif;
}

.button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #ff2626;
    color: yellow;
    text-decoration: none;
    border-radius: 5px;
    display: flex;
    justify-content: center;
    align-items: flex-end;
    font-family: 'Magneto', Arial, sans-serif;
}

.button:hover {
    background-color: darkred;
}
</style>
</head>
<body>
<div class="container">
    <table>
        <tr>
            <th>CarId</th>
            <th>CarModel</th>
            <th>CarBrand</th>
            <th>CarColor</th>
            <th>CarPrice</th>
            <th>UPDATE</th>
            <th>DELETE</th>
        </tr>
        <% ResultSet rs = (ResultSet) request.getAttribute("Result"); %>
        <% while(rs.next()) { %>
        <tr>
            <td><b><%= rs.getInt(1) %></b></td>
            <td><b><%= rs.getString(2) %></b></td>
            <td><b><%= rs.getString(3) %></b></td>
            <td><b><%= rs.getString(4) %></b></td>
            <td><b><%= rs.getInt(5) %></b></td>
            <td><b><a href="updatecar?carId=<%= rs.getInt(1) %>">UPDATE</a></b></td>
            <td><b><a href="deletecar?carId=<%= rs.getInt(1) %>">DELETE</a></b></td>
        </tr>
        <% } %>
    </table>
    <a href="Index.jsp" class="button"> RETURN CAR DASHBOARD</a>
</div>
</body>
</html>
