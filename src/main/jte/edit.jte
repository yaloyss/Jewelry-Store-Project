@import com.yaloys.jewelry_store.data.Product
@param Product product
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Product</title>
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
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff0f5;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(255, 105, 180, 0.2);
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        label {
            display: block;
            color: #ff1493;
            font-weight: bold;
            margin-bottom: 5px;
            font-size: 14px;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #ffcce6;
            border-radius: 6px;
            font-size: 16px;
            box-sizing: border-box;
            font-family: 'Raleway', sans-serif;
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

        .btn-container {
            display: flex;
            gap: 15px;
            justify-content: center;
            margin-top: 30px;
        }

        .btn {
            padding: 12px 24px;
            border: 2px solid transparent;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            font-family: 'Raleway', sans-serif;
            transition: all 0.3s ease;
        }

        .btn-save {
            background-color: #ff69b4;
            color: white;
            border-color: #ff69b4;
        }

        .btn-save:hover {
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
<h1>Edit Product</h1>

<div class="form-container">
    <form action="/products/edit/${product.getId()}" method="post">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${product.getName()}" required>
        </div>

        <div class="form-group">
            <label for="weight">Weight:</label>
            <input type="number" id="weight" name="weight" step="0.01" value="${product.getWeight()}" required>
        </div>

        <div class="form-group">
            <label for="metalType">Metal Type:</label>
            <input type="text" id="metalType" name="metalType" value="${product.getMetalType()}" required>
        </div>

        <div class="form-group">
            <label for="stoneType">Stone Type:</label>
            <input type="text" id="stoneType" name="stoneType" value="${product.getStoneType()}">
        </div>

        <div class="form-group">
            <label for="price">Price:</label>
            <input type="number" id="price" name="price" step="0.01" value="${product.getPrice()}" required>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer:</label>
            <input type="text" id="manufacturer" name="manufacturer" value="${product.getManufacturer()}" required>
        </div>

        <div class="form-group">
            <label for="size">Size:</label>
            <input type="number" id="size" name="size" step="0.01" value="${product.getSize()}">
        </div>

        <div class="btn-container">
            <button type="submit" class="btn btn-save">Save Changes</button>
            <a href="/product" class="btn btn-cancel">Cancel</a>
        </div>
    </form>
</div>
</body>
</html>