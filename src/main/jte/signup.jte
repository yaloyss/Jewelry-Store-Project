@import com.yaloys.jewelry_store.user.AppUserRequest

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up - Jewelry Store</title>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: white;
            font-family: 'Raleway', sans-serif;
            margin: 0;
            min-height: 100vh;
            position: relative;
            overflow-x: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .signup-container {
            position: relative;
            z-index: 1;
            background: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(5px);
            padding: 40px;
            border-radius: 20px;
            width: 90%;
            max-width: 450px;
            box-shadow: 0 8px 32px rgba(255, 105, 180, 0.1);
            text-align: center;
        }

        h1 {
            color: #333;
            font-size: 2.5em;
            margin-bottom: 10px;
            margin-top: 10px;
            text-shadow: 2px 2px 4px rgba(255, 105, 180, 0.1);
        }

        .signup-container p {
            color: #666;
            margin-bottom: 30px;
            font-size: 1.1em;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
            font-size: 1.1em;
        }

        .form-group input {
            width: 100%;
            padding: 15px;
            border: 2px solid transparent;
            border-radius: 15px;
            font-family: 'Raleway', sans-serif;
            font-size: 1em;
            background: linear-gradient(135deg, #ffe6f0, #fff0f5);
            transition: all 0.3s ease;
            box-sizing: border-box;
        }

        .form-group input:focus {
            outline: none;
            border-color: #ff69b4;
            background: linear-gradient(135deg, #fff0f5, #ffe6f0);
            box-shadow: 0 4px 15px rgba(255, 105, 180, 0.2);
        }

        .error-message {
            color: #ff1493;
            font-size: 0.9em;
            display: none;
            margin-top: 8px;
            font-weight: 500;
        }

        .form-group.error input {
            border-color: #ff1493;
            background: linear-gradient(135deg, #ffe6f0, #ffccdd);
        }

        .form-group.error .error-message {
            display: block;
        }

        .signup-button {
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
            margin-top: 10px;
        }

        .signup-button:hover {
            background: linear-gradient(135deg, #ff69b4, #ff1493);
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(255, 105, 180, 0.4);
            border-color: #ff1493;
        }

        .signup-button:disabled {
            opacity: 0.7;
            cursor: not-allowed;
            transform: none;
        }

        .signup-button:disabled:hover {
            background: linear-gradient(135deg, #ffe6f0, #fff0f5);
            color: #ff69b4;
            transform: none;
            box-shadow: 0 4px 15px rgba(255, 105, 180, 0.2);
        }

        .form-title {
            text-align: center;
        }

        .signup-form {
            text-align: left;
        }
    </style>
</head>
<body>
<div class="signup-container">
    <h1 class="form-title">Sign Up</h1>
    <p>Create your account</p>
    <form class="signup-form" id="signupForm">
        <div class="form-group" id="fullNameGroup">
            <label for="fullName">Full Name</label>
            <input type="text" id="fullName" name="fullName" required>
            <p class="error-message">Please enter your full name</p>
        </div>

        <div class="form-group" id="userNameGroup">
            <label for="userName">Username</label>
            <input type="text" id="userName" name="userName" required>
            <p class="error-message">Username must be at least 4 characters</p>
        </div>

        <div class="form-group" id="passwordGroup">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
            <p class="error-message">Password must be at least 8 characters</p>
        </div>

        <div class="form-group" id="roleGroup">
            <label for="role">Role</label>
            <input type="text" id="role" name="role" required>
            <p class="error-message">Please enter a role</p>
        </div>

        <button type="submit" class="signup-button">Sign Up</button>
    </form>
</div>

<script>
    document.getElementById('signupForm').addEventListener('submit', async function(e) {
        e.preventDefault();
        let isValid = true;

        const fullName = document.getElementById('fullName');
        const userName = document.getElementById('userName');
        const password = document.getElementById('password');
        const role = document.getElementById('role');

        const fullNameGroup = document.getElementById('fullNameGroup');
        const userNameGroup = document.getElementById('userNameGroup');
        const passwordGroup = document.getElementById('passwordGroup');
        const roleGroup = document.getElementById('roleGroup');

        // Validate full name
        if (fullName.value.trim() === '') {
            fullNameGroup.classList.add('error');
            isValid = false;
        } else {
            fullNameGroup.classList.remove('error');
        }

        // Validate username length
        if (userName.value.trim().length < 4) {
            userNameGroup.classList.add('error');
            isValid = false;
        } else {
            userNameGroup.classList.remove('error');
        }

        // Validate password length
        if (password.value.length < 8) {
            passwordGroup.classList.add('error');
            isValid = false;
        } else {
            passwordGroup.classList.remove('error');
        }

        // Validate role
        if (role.value.trim() === '') {
            roleGroup.classList.add('error');
            isValid = false;
        } else {
            roleGroup.classList.remove('error');
        }

        if (!isValid) {
            return;
        }

        const formData = {
            fullName: fullName.value.trim(),
            userName: userName.value.trim(),
            password: password.value,
            role: role.value.trim()
        };

        const signupButton = document.querySelector('.signup-button');
        signupButton.disabled = true;
        signupButton.textContent = 'Signing up...';

        try {
            const response = await fetch('/api/signup', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(formData)
            });

            if (!response.ok) {
                const errorData = await response.json();
                throw new Error(errorData.message || 'Registration failed');
            }

            window.location.href = '/login';
        } catch (error) {
            alert('Registration failed: ' + error.message);
            console.error('Signup error:', error);
        } finally {
            signupButton.disabled = false;
            signupButton.textContent = 'Sign Up';
        }
    });
</script>
</body>
</html>