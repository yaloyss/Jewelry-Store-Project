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

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #ff1493;
            font-weight: bold;
            font-size: 14px;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #ffcce6;
            border-radius: 6px;
            box-sizing: border-box;
            font-family: 'Raleway', sans-serif;
            font-size: 16px;
            background-color: white;
            color: #333;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus, input[type="number"]:focus {
            outline: none;
            border-color: #ff1493;
            box-shadow: 0 0 8px rgba(255, 20, 147, 0.3);
            transform: translateY(-2px);
        }

        input[type="text"]:hover, input[type="number"]:hover {
            border-color: #ff69b4;
            box-shadow: 0 2px 4px rgba(255, 105, 180, 0.2);
        }

        .button-group {
            margin-top: 30px;
            text-align: center;
            display: flex;
            gap: 15px;
            justify-content: center;
        }

        .btn {
            padding: 12px 24px;
            border: 2px solid transparent;
            border-radius: 6px;
            cursor: pointer;
            font-family: 'Raleway', sans-serif;
            font-weight: bold;
            font-size: 16px;
            text-decoration: none;
            display: inline-block;
            transition: all 0.3s ease;
        }

        .btn-primary {
            background-color: #ff69b4;
            color: white;
            border-color: #ff69b4;
        }

        .btn-primary:hover {
            background-color: #ff1493;
            border-color: #ff1493;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(255, 20, 147, 0.3);
        }

        .btn-cancel {
            background-color: #ffffff;
            color: #ff69b4;
            border-color: #ff69b4;
        }

        .btn-cancel:hover {
            background-color: #ff69b4;
            color: white;
            border-color: #ff69b4;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(255, 20, 147, 0.3);
        }
    </style>
</head>
<body>
<h1>Add New Product</h1>

<div class="form-container">
    <form method="post" action="/products/create">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
        </div>

        <div class="form-group">
            <label for="weight">Weight:</label>
            <input type="number" id="weight" name="weight" step="0.01" required>
        </div>

        <div class="form-group">
            <label for="metalType">Metal Type:</label>
            <input type="text" id="metalType" name="metalType" required>
        </div>

        <div class="form-group">
            <label for="stoneType">Stone Type:</label>
            <input type="text" id="stoneType" name="stoneType" required>
        </div>

        <div class="form-group">
            <label for="price">Price:</label>
            <input type="number" id="price" name="price" step="0.01" required>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer:</label>
            <input type="text" id="manufacturer" name="manufacturer" required>
        </div>

        <div class="form-group">
            <label for="size">Size:</label>
            <input type="text" id="size" name="size" required>
        </div>

        <div class="button-group">
            <button type="submit" class="btn btn-primary">Add Product</button>
            <a href="/product" class="btn btn-cancel">Cancel</a>
        </div>
    </form>
</div>
</body>
</html>