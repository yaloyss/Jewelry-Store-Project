@import com.yaloys.jewelry_store.data.Product
@import java.util.List

@param List<Product> products

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Products</title>
</head>
<body>
<h1>List of jewelry available in the store</h1>
<table border="1">
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
