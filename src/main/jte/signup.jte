@import com.yaloys.jewelry_store.data.user.AppUser

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f4f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
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

        button {
            width: 100%;
            padding: 0.6rem;
            background-color: #4f46e5;
            color: white;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        button:hover {
            background-color: #4338ca;
        }
    </style>
</head>
<body>
<form action="/signup" method="post">
    <h1>Register</h1>

    <label for="userName">Username</label>
    <input type="text" id="userName" name="userName" required>

    <label for="password">Password</label>
    <input type="password" id="password" name="password" required>

    <label for="fullName">Full Name</label>
    <input type="text" id="fullName" name="fullName" required>

    <label for="role">Role</label>
    <input type="text" id="role" name="role" required>

    <button type="submit">Sign Up</button>
</form>
</body>
</html>
