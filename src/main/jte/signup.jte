@import com.yaloys.jewelry_store.user.AppUserRequest

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
            margin: 0;
        }

        .signup-container {
            background-color: #ffffff;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 350px;
        }

        .signup-container h1 {
            text-align: center;
            margin-bottom: 0.5rem;
            color: #333;
        }

        .signup-container p {
            text-align: center;
            color: #555;
            margin-bottom: 1.5rem;
        }

        .form-group {
            margin-bottom: 1rem;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 0.3rem;
        }

        .form-group input {
            width: 100%;
            padding: 0.5rem;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .error-message {
            color: red;
            font-size: 0.85rem;
            display: none;
            margin-top: 0.3rem;
        }

        .form-group.error input {
            border-color: red;
        }

        .form-group.error .error-message {
            display: block;
        }

        .signup-button {
            width: 100%;
            padding: 0.7rem;
            background-color: #dc53a9;
            color: white;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .signup-button:hover {
            background-color: #b53486;
        }
    </style>
</head>
<body>
<div class="signup-container">
    <h1>Sign Up</h1>
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
