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
<%--        .add-btn {--%>
<%--            background-color: #ff69b4;--%>
<%--            color: white;--%>
<%--            padding: 12px 24px;--%>
<%--            text-decoration: none;--%>
<%--            border-radius: 6px;--%>
<%--            font-weight: bold;--%>
<%--            display: inline-block;--%>
<%--            margin-bottom: 30px;--%>
<%--        }--%>
<%--        .add-btn:hover {--%>
<%--            background-color: #ff1493;--%>
<%--        }--%>
<%--        table {--%>
<%--            margin: 0 auto;--%>
<%--            border-collapse: collapse;--%>
<%--            width: 90%;--%>
<%--            max-width: 1200px;--%>
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
<%--        .empty-message {--%>
<%--            color: #ff69b4;--%>
<%--            font-style: italic;--%>
<%--            padding: 30px;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>List of jewelry available in the store</h1>--%>

<%--<a href="/product/create" class="add-btn">Add New Product</a>--%>

<%--@if(products.isEmpty())--%>
<%--    <div class="empty-message">--%>
<%--        <p>No products are available. Add your first product!</p>--%>
<%--    </div>--%>
<%--@else--%>
<%--    <table>--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>ID</th>--%>
<%--            <th>Name</th>--%>
<%--            <th>Weight</th>--%>
<%--            <th>Metal type</th>--%>
<%--            <th>Stone type</th>--%>
<%--            <th>Price</th>--%>
<%--            <th>Manufacturer</th>--%>
<%--            <th>Size</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        @for(Product product : products)--%>
<%--            <tr>--%>
<%--                <td>${product.getId()}</td>--%>
<%--                <td>${product.getName()}</td>--%>
<%--                <td>${product.getWeight()}</td>--%>
<%--                <td>${product.getMetalType()}</td>--%>
<%--                <td>${product.getStoneType()}</td>--%>
<%--                <td>${product.getPrice()}</td>--%>
<%--                <td>${product.getManufacturer()}</td>--%>
<%--                <td>${product.getSize()}</td>--%>
<%--            </tr>--%>
<%--        @endfor--%>
<%--        </tbody>--%>
<%--    </table>--%>
<%--@endif--%>
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
            width: 95%;
            max-width: 1400px;
            background-color: #fff0f5;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(255, 105, 180, 0.2);
        }
        th, td {
            padding: 12px 15px;
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
        .edit-btn {
            background-color: #ff69b4;
            color: white;
            padding: 6px 12px;
            text-decoration: none;
            border-radius: 4px;
            font-size: 12px;
            font-weight: bold;
            display: inline-block;
        }
        .edit-btn:hover {
            background-color: #ff1493;
        }
        .actions-column {
            width: 100px;
            text-align: center;
        }
    </style>
</head>
<body>
<h1>List of jewelry available in the store</h1>

<a href="/product/create" class="add-btn">Add New Product</a>

@if(products.isEmpty())
    <div class="empty-message">
        <p>No products are available. Add your first product!</p>
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
            <th class="actions-column">Actions</th>
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
                <td class="actions-column">
                    <a href="/product/edit/${product.getId()}" class="edit-btn">Edit</a>
                </td>
            </tr>
        @endfor
        </tbody>
    </table>
@endif
</body>
</html>