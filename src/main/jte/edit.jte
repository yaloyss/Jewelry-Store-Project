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
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 2px solid #ffcce6;
            border-radius: 6px;
            font-size: 16px;
            box-sizing: border-box;
        }
        input[type="text"]:focus, input[type="number"]:focus {
            outline: none;
            border-color: #ff69b4;
        }
        .btn-container {
            display: flex;
            gap: 15px;
            justify-content: center;
            margin-top: 30px;
        }
        .btn {
            padding: 12px 24px;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }
        .btn-save {
            background-color: #ff69b4;
            color: white;
        }
        .btn-save:hover {
            background-color: #ff1493;
        }
        .btn-cancel {
            background-color: #ccc;
            color: #333;
        }
        .btn-cancel:hover {
            background-color: #999;
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