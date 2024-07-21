<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EDIT YOUR CAR DETAILS</title>
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
    background-image: url('e5.png'); /* Replace 'e5.jpg' with the actual path to your image file */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 900px;
    margin: 70px auto;
    padding: 70px;
    background-color: rgba(100, 100, 100, 0.5); /* Semi-transparent white background for better readability */
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    font-family: 'Magneto', Arial, sans-serif;
}

form {
    margin-top: 20px;
}

input[type="number"],
input[type="text"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: red;
    color: yellow;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-family: 'Magneto', Arial, sans-serif;
}

input[type="submit"]:hover {
    background-color: darkred;
}

.highlight {
    background-color: #ffcc00;
}
</style>
</head>
<body>
<div class="container">
    <h2>Edit Car Details</h2>
    <% ResultSet rs = (ResultSet) request.getAttribute("resultSet");
    rs.next();
    %>
    <form action="saveUpdateCar" method="post">
        <input type="number" value="<%= rs.getInt(1) %>" name="carId" readonly="true"><br>
        <input type="text" value="<%= rs.getString(2) %>" name="carModel"><br>
        <input type="text" value="<%= rs.getString(3) %>" name="carBrand"><br>
        <input type="text" value="<%= rs.getString(4) %>" name="carColor" class="highlight"><br>
        <input type="number" value="<%= rs.getInt(5) %>" name="carPrice"><br>
        <input type="submit" value="Save Update">
    </form>
</div>
</body>
</html>
