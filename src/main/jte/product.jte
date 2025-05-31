<%--@import com.yaloys.jewelry_store.data.Product--%>
<%--@import java.util.List--%>

<%--@param List<Product> products--%>

<%--<!doctype html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Products</title>--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap" rel="stylesheet">--%>
<%--    <style>--%>
<%--        body {--%>
<%--            background-color: white;--%>
<%--            font-family: 'Raleway', sans-serif;--%>
<%--            text-align: center;--%>
<%--            padding: 40px;--%>
<%--            margin: 0;--%>
<%--        }--%>

<%--        h1 {--%>
<%--            color: #ff69b4;--%>
<%--            margin-bottom: 30px;--%>
<%--        }--%>

<%--        table {--%>
<%--            margin: 0 auto;--%>
<%--            border-collapse: collapse;--%>
<%--            width: 90%;--%>
<%--            max-width: 1000px;--%>
<%--            background-color: #fff0f5;--%>
<%--            border-radius: 12px;--%>
<%--            overflow: hidden;--%>
<%--            box-shadow: 0 0 20px rgba(255, 105, 180, 0.2);--%>
<%--        }--%>

<%--        th, td {--%>
<%--            padding: 12px 20px;--%>
<%--            border: 1px solid #ffcce6;--%>
<%--            color: #333;--%>
<%--        }--%>

<%--        th {--%>
<%--            background-color: #ffe6f0;--%>
<%--            color: #ff1493;--%>
<%--            font-weight: bold;--%>
<%--        }--%>

<%--        tr:nth-child(even) {--%>
<%--            background-color: #fff5fa;--%>
<%--        }--%>

<%--        tr:hover {--%>
<%--            background-color: #ffe0eb;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>List of jewelry available in the store</h1>--%>

<%--<h2>Add New Product</h2>--%>
<%--<form method="post" action="/products">--%>
<%--    <label>Name: <input type="text" name="name" required></label><br>--%>
<%--    <label>Weight: <input type="number" name="weight" required></label><br>--%>
<%--    <label>Metal type: <input type="text" name="metalType" required></label><br>--%>
<%--    <label>Stone type: <input type="text" name="stoneType" required></label><br>--%>
<%--    <label>Price: <input type="number" name="price" required></label><br>--%>
<%--    <label>Manufacturer: <input type="text" name="manufacturer" required></label><br>--%>
<%--    <label>Size: <input type="text" name="size" required></label><br>--%>
<%--    <button type="submit">Add Product</button>--%>
<%--    step="0.01"--%>
<%--</form>--%>

<%--<table>--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Name</th>--%>
<%--        <th>Weight</th>--%>
<%--        <th>Metal type</th>--%>
<%--        <th>Stone type</th>--%>
<%--        <th>Price</th>--%>
<%--        <th>Manufacturer</th>--%>
<%--        <th>Size</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    @for(Product product : products)--%>
<%--        <tr>--%>
<%--            <td>${product.getId()}</td>--%>
<%--            <td>${product.getName()}</td>--%>
<%--            <td>${product.getWeight()}</td>--%>
<%--            <td>${product.getMetalType()}</td>--%>
<%--            <td>${product.getStoneType()}</td>--%>
<%--            <td>${product.getPrice()}</td>--%>
<%--            <td>${product.getManufacturer()}</td>--%>
<%--            <td>${product.getSize()}</td>--%>
<%--        </tr>--%>
<%--    @endfor--%>
<%--    </tbody>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>

@import com.yaloys.jewelry_store.data.Product
@import java.util.List
@param List<Product> products
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Products</title>
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
        .add-btn {
            background-color: #ff69b4;
            color: white;
            padding: 12px 24px;
            text-decoration: none;
            border-radius: 6px;
            font-weight: bold;
            display: inline-block;
            margin-bottom: 30px;
        }
        .add-btn:hover {
            background-color: #ff1493;
        }
        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 90%;
            max-width: 1200px;
            background-color: #fff0f5;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(255, 105, 180, 0.2);
        }
        th, td {
            padding: 12px 20px;
            border: 1px solid #ffcce6;
            color: #333;
        }
        th {
            background-color: #ffe6f0;
            color: #ff1493;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #fff5fa;
        }
        tr:hover {
            background-color: #ffe0eb;
        }
        .empty-message {
            color: #ff69b4;
            font-style: italic;
            padding: 30px;
        }
    </style>
</head>
<body>
<h1>List of jewelry available in the store</h1>

<a href="/product/create" class="add-btn">Add New Product</a>

@if(products.isEmpty())
    <div class="empty-message">
        <p>No products available. Add your first product!</p>
    </div>
@else
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Weight</th>
            <th>Metal type</th>
            <th>Stone type</th>
            <th>Price</th>
            <th>Manufacturer</th>
            <th>Size</th>
        </tr>
        </thead>
        <tbody>
        @for(Product product : products)
            <tr>
                <td>${product.getId()}</td>
                <td>${product.getName()}</td>
                <td>${product.getWeight()}</td>
                <td>${product.getMetalType()}</td>
                <td>${product.getStoneType()}</td>
                <td>${product.getPrice()}</td>
                <td>${product.getManufacturer()}</td>
                <td>${product.getSize()}</td>
            </tr>
        @endfor
        </tbody>
    </table>
@endif
</body>
</html>