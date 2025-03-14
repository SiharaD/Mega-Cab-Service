<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Background Animation</title>
    <style>
        body {
            background: linear-gradient(-45deg, #8B0000, #4B0082, #2F4F4F, #000000);
            background-size: 400% 400%;
            animation: gradientBG 8s ease infinite;
            color: white;
            font-family: Arial, sans-serif;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
        }
        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
        form {
            background: rgba(255, 255, 255, 0.1);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.3);
            margin-top: 20px;
        }
        label, select, input {
            color: white;
            font-size: 16px;
            margin: 5px;
        }
        select, input[type="submit"] {
            padding: 5px;
            border-radius: 5px;
            border: none;
        }
        input[type="submit"] {
            background: #4B0082;
            color: white;
            cursor: pointer;
            transition: background 0.3s;
        }
        input[type="submit"]:hover {
            background: #8B0000;
        }
    </style>
</head>
<body>
    <h1>Background Animation</h1>
    <h2>Select Phone Size</h2>
    <form action="${pageContext.request.contextPath}/helpfactory" method="post">
        <label for="size">Choose size:</label>
        <select name="size" id="size">
            <option value="low">User loging</option>
            <option value="medium">Register as a driver</option>
            <option value="large">Register your vehicle</option>
        </select>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
