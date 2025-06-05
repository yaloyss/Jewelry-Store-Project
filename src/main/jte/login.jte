<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - Jewelry Store</title>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #f8f6f6;
            font-family: 'Raleway', sans-serif;
            margin: 0;
            min-height: 100vh;
            position: relative;
            overflow-x: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-container {
            position: relative;
            z-index: 1;
            background: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(5px);
            padding: 40px;
            border-radius: 20px;
            width: 90%;
            max-width: 400px;
            box-shadow: 0 8px 32px rgba(255, 105, 180, 0.1);
            text-align: center;
        }

        h1 {
            color: #333;
            font-size: 2.5em;
            margin-bottom: 30px;
            margin-top: 10px;
            text-shadow: 2px 2px 4px rgba(255, 105, 180, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
            text-align: left;
            font-size: 1.1em;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 15px;
            margin-bottom: 20px;
            border: 2px solid transparent;
            border-radius: 15px;
            font-family: 'Raleway', sans-serif;
            font-size: 1em;
            background: linear-gradient(135deg, #ffe6f0, #fff0f5);
            transition: all 0.3s ease;
            box-sizing: border-box;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #ff69b4;
            background: linear-gradient(135deg, #fff0f5, #ffe6f0);
            box-shadow: 0 4px 15px rgba(255, 105, 180, 0.2);
        }

        .login-button {
            width: 100%;
            padding: 15px 30px;
            background: linear-gradient(135deg, #ffe6f0, #fff0f5);
            color: #ff69b4;
            border: 2px solid transparent;
            border-radius: 15px;
            font-weight: bold;
            font-size: 1.1em;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(255, 105, 180, 0.2);
            font-family: 'Raleway', sans-serif;
            margin-bottom: 20px;
        }

        .login-button:hover {
            background: linear-gradient(135deg, #ff69b4, #ff1493);
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(255, 105, 180, 0.4);
            border-color: #ff1493;
        }

        .create-account {
            margin-top: 20px;
            text-align: center;
        }

        .create-account p {
            color: #333;
            margin: 0;
            font-size: 1em;
        }

        .create-account a {
            color: #ff69b4;
            text-decoration: none;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .create-account a:hover {
            color: #ff1493;
            text-shadow: 1px 1px 2px rgba(255, 105, 180, 0.3);
        }

        form {
            text-align: left;
        }

        .form-title {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="login-container">
    <form action="/login" method="post">
        <h1 class="form-title">Login</h1>

        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>

        <button type="submit" class="login-button">Login</button>

        <div class="create-account">
            <p>Don't have an account? <a href="/signup">Create Account</a></p>
        </div>
    </form>
</div>
</body>
</html>