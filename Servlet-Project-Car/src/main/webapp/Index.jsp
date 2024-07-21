<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CAR DASHBOARD</title>
<style>
/* CSS styles */
@font-face {
    font-family: 'Magneto Bold';
    font-style: normal;
    font-weight: normal;
    src: local('Magneto Bold'), url('MAGNETOB.woff') format('woff');
    }

body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url('a1.png'); /* Replace 'a1.png' with the actual path to your image file */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}

.container {
    max-width: 800px;
    margin: 20px auto;
    padding: 20px;
    background-color: rgba(120, 130, 130, 0.5); /* Semi-transparent background for better readability */
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    position: relative;
    left: 250px; /* Adjust this value to move the container to the right */
}

h1 {
    text-align: center;
    font-family: 'Magneto', Arial, sans-serif;
}

form {
    text-align: center;
    margin-top: 20px;
}

form a {
    display: inline-block;
    margin: 0 10px;
    padding: 10px 20px;
    text-decoration: none;
    background-color: red; /* Button background color */
    color: yellow; /* Button text color */
    border-radius: 5px;
    font-family: 'Magneto', Arial, sans-serif;
}

form a:hover {
    background-color: darkred; /* Darker red for hover effect */
}
</style>
</head>
<body>
<div class="container">
    <h1>WELCOME TO THE CAR DASHBOARD</h1>
    <form action="">
        <a href="AddCar.jsp">ADD NEW CARS</a>
        <a href="displayAllCars">DISPLAY ALL CARS</a>
    </form>
</div>
</body>
</html>
