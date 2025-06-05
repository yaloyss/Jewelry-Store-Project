<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Jewelry Store</title>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: white;
            font-family: 'Raleway', sans-serif;
            text-align: center;
            margin: 0;
            min-height: 100vh;
            position: relative;
            overflow-x: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .content-wrapper {
            position: relative;
            z-index: 1;
            background: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(5px);
            padding: 40px;
            border-radius: 20px;
            width: 90%;
            max-width: 800px;
            box-shadow: 0 8px 32px rgba(255, 105, 180, 0.1);
        }

        h1 {
            color: #333;
            font-size: 2.5em;
            margin-bottom: 30px;
            margin-top: 10px;
            text-shadow: 2px 2px 4px rgba(255, 105, 180, 0.1);
        }

        nav ul {
            list-style-type: none;
            padding: 0;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        nav li {
            display: inline-block;
        }

        nav a {
            text-decoration: none;
            background: linear-gradient(135deg, #ffe6f0, #fff0f5);
            color: #ff69b4;
            padding: 15px 30px;
            border-radius: 15px;
            font-weight: bold;
            font-size: 1.1em;
            transition: all 0.3s ease;
            border: 2px solid transparent;
            box-shadow: 0 4px 15px rgba(255, 105, 180, 0.2);
            display: block;
            min-width: 120px;
        }

        nav a:hover {
            background: linear-gradient(135deg, #ff69b4, #ff1493);
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(255, 105, 180, 0.4);
            border-color: #ff1493;
        }
    </style>
</head>
<body>
<div class="content-wrapper">
    <h1>Welcome to the Jewelry Store!</h1>
    <%--<h1> Admin dashboard</h1>--%>
    <nav>
        <ul>
            <li><a href="/client">Clients</a></li>
            <li><a href="/product">Products</a></li>
            <li><a href="/employee">Employees</a></li>
            <li><a href="/bill">Bills</a></li>
        </ul>
    </nav>
</div>
</body>
</html>