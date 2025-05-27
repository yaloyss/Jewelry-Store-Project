@import com.yaloys.jewelry_store.data.Product
@import java.util.List

@param List<Product> products

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel - Jewelry Store</title>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: white;
            font-family: 'Raleway', sans-serif;
            padding: 40px;
            margin: 0;
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        nav ul {
            list-style-type: none;
            padding: 0;
            margin-bottom: 30px;
        }

        nav li {
            display: inline-block;
            margin: 0 15px;
        }

        nav a {
            text-decoration: none;
            background-color: #ffe6f0;
            color: #ff69b4;
            padding: 10px 20px;
            border-radius: 12px;
            font-weight: bold;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        nav a:hover {
            background-color: #ff69b4;
            color: white;
        }

        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 90%;
            max-width: 1000px;
            background-color: #fff0f5;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(255, 105, 180, 0.2);
        }

        th, td {
            padding: 10px 15px;
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
    </style>
</head>
<body>

<h1>Admin Dashboard</h1>

<nav>
    <ul>
        <li><a href="/clients">Clients</a></li>
        <li><a href="/employees">Employees</a></li>
        <li><a href="/bills">Bills</a></li>
    </ul>
</nav>

<h2>Products</h2>
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

</body>
</html>
