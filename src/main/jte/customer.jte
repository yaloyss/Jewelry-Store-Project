@import com.yaloys.jewelry_store.data.Product
@import java.util.List

@param List<Product> products
@param boolean isAuthenticated
@param boolean isAdmin

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Page - Jewelry Store</title>
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
            color: #ff69b4;
            margin-bottom: 30px;
        }

        .home-btn {
            background-color: #ff69b4;
            color: white;
            padding: 12px 24px;
            text-decoration: none;
            border-radius: 6px;
            font-weight: bold;
            display: inline-block;
            margin-bottom: 30px;
            transition: all 0.3s ease;
            border: 2px solid transparent;
        }

        .home-btn:hover {
            background-color: #ff1493;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(255, 20, 147, 0.3);
            border-color: #ff1493;
        }

        nav ul {
            list-style-type: none;
            padding: 0;
            margin-bottom: 40px;
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
    </style>
</head>
<body>

<h1>Welcome, dear customer!</h1>

<a href="/" class="home-btn">← Back to Home</a>

<nav>
    <ul>
        @if(isAuthenticated)
            @if(isAdmin)
                <li><a href="/admin">Admin Panel</a></li>
            @endif
        @else
            <li><a href="/login">Login</a></li>
            <li><a href="/signup">Sign Up</a></li>
        @endif
    </ul>
</nav>

<h2>Available Products</h2>

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