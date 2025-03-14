<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Selected Phone Brand</title>
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
        h1 {
            font-size: 2.5em;
            margin-bottom: 10px;
        }
        h2 {
            font-size: 2em;
            margin-bottom: 5px;
        }
        p {
            font-size: 1.5em;
        }
    </style>
</head>
<body>
    <h1>Background Animation</h1>
    <h2>Selected Phone Brand</h2>
    <p>Phone Brand: ${phoneBrand}</p>
</body>
</html>
