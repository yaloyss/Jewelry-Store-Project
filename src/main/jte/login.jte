<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f4f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: #ffffff;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 300px;
        }

        h1 {
            text-align: center;
            margin-bottom: 1.5rem;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 0.3rem;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 0.5rem;
            margin-bottom: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .login-button {
            width: 100%;
            padding: 0.6rem;
            background-color: #dc53a9;
            color: white;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        .login-button:hover {
            background-color: #a333a1;
        }

        .create-account {
            margin-top: 1rem;
            text-align: center;
        }

        .create-account a {
            color: #dc53a9;
            text-decoration: none;
            font-weight: bold;
        }

        .create-account a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="login-container">
    <form action="/login" method="post">
        <h1>Login</h1>
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
