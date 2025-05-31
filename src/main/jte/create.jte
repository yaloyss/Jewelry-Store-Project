<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Product</title>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: white;
            font-family: 'Raleway', sans-serif;
            text-align: center;
            padding: 40px;
            margin: 0;
        }
        h1 {
            color: #ff69b4;
            margin-bottom: 30px;
        }
        .form-container {
            background-color: #fff0f5;
            padding: 30px;
            border-radius: 12px;
            margin: 20px auto;
            max-width: 500px;
            box-shadow: 0 0 20px rgba(255, 105, 180, 0.2);
        }
        form label {
            display: block;
            margin: 15px 0 5px 0;
            color: #ff1493;
            font-weight: bold;
            text-align: left;
        }
        form input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ffcce6;
            border-radius: 6px;
            box-sizing: border-box;
            font-family: 'Raleway', sans-serif;
        }
        form input:focus {
            outline: none;
            border-color: #ff69b4;
            box-shadow: 0 0 5px rgba(255, 105, 180, 0.3);
        }
        .button-group {
            margin-top: 20px;
            text-align: center;
        }
        button {
            background-color: #ff69b4;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            margin: 0 10px;
            font-family: 'Raleway', sans-serif;
            font-weight: bold;
        }
        button:hover {
            background-color: #ff1493;
        }
        .cancel-btn {
            background-color: #ccc;
        }
        .cancel-btn:hover {
            background-color: #999;
        }
        a {
            text-decoration: none;
            color: white;
        }
    </style>
</head>
<body>
<h1>Add New Product</h1>
<div class="form-container">
    <form method="post" action="/products/create">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="weight">Weight:</label>
        <input type="number" id="weight" name="weight" step="0.01" required>

        <label for="metalType">Metal Type:</label>
        <input type="text" id="metalType" name="metalType" required>

        <label for="stoneType">Stone Type:</label>
        <input type="text" id="stoneType" name="stoneType" required>

        <label for="price">Price:</label>
        <input type="number" id="price" name="price" step="0.01" required>

        <label for="manufacturer">Manufacturer:</label>
        <input type="text" id="manufacturer" name="manufacturer" required>

        <label for="size">Size:</label>
        <input type="text" id="size" name="size" required>

        <div class="button-group">
            <button type="submit">Add Product</button>
            <button type="button" class="cancel-btn">
                <a href="/product">Cancel</a>
            </button>
        </div>
    </form>
</div>
</body>
</html>