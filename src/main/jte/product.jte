@import com.yaloys.jewelry_store.data.Product
@import java.util.List
@param List<Product> products
@param String currentDirection = null
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
        .home-btn {
            background-color: #ff69b4;
            color: white;
            padding: 12px 24px;
            text-decoration: none;
            border-radius: 6px;
            font-weight: bold;
            display: inline-block;
            margin-bottom: 20px;
            transition: all 0.3s ease;
            border: 2px solid transparent;
        }

        .home-btn:hover {
            background-color: #ff1493;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(255, 20, 147, 0.3);
            border-color: #ff1493;
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
            transition: all 0.3s ease;
            border: 2px solid transparent;
        }

        .add-btn:hover {
            background-color: #ff1493;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(255, 20, 147, 0.3);
            border-color: #ff1493;
        }

        .sort-controls {
            background-color: #fff0f5;
            padding: 20px;
            border-radius: 12px;
            margin-bottom: 30px;
            box-shadow: 0 0 10px rgba(255, 105, 180, 0.1);
            max-width: 1400px;
            margin: 0 auto 30px auto;
        }

        .sort-controls h3 {
            color: #ff1493;
            margin-bottom: 15px;
            font-size: 18px;
        }

        .sort-options {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 20px;
            flex-wrap: wrap;
        }

        .sort-group {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .sort-group label {
            color: #ff1493;
            font-weight: bold;
            font-size: 14px;
        }

        .sort-buttons {
            display: flex;
            gap: 5px;
        }

        .sort-btn {
            background-color: #ffcce6;
            color: #ff1493;
            border: 2px solid #ff69b4;
            padding: 6px 12px;
            text-decoration: none;
            border-radius: 4px;
            font-size: 12px;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .sort-btn:hover {
            background-color: #ff69b4;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(255, 20, 147, 0.3);
        }

        .sort-btn.active {
            background-color: #ff1493;
            color: white;
        }

        .reset-btn {
            background-color: #f8f3f3;
            color: #ff1493;
            border: 2px solid #ff1493;
            padding: 6px 12px;
            text-decoration: none;
            border-radius: 4px;
            font-size: 12px;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .reset-btn:hover {
            background-color: #ff69b4;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(255, 20, 147, 0.3);
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
            background-color: #ffcce6;
            color: #ff1493;
            border: 2px solid #ff69b4;
            padding: 6px 12px;
            text-decoration: none;
            border-radius: 4px;
            font-size: 12px;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .edit-btn:hover {
            background-color: #ff69b4;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(255, 20, 147, 0.3);
        }

        .actions-column {
            width: 150px;
            text-align: center;
        }

        .btn-group {
            display: flex;
            gap: 8px;
            justify-content: center;
            align-items: center;
        }

        .delete-btn {
            background-color: #ff69b4;
            color: white;
            padding: 6px 12px;
            text-decoration: none;
            border-radius: 4px;
            font-size: 12px;
            font-weight: bold;
            display: inline-block;
            transition: all 0.3s ease;
            border: 2px solid transparent;
        }

        .delete-btn:hover {
            background-color: #ff1493;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(255, 20, 147, 0.3);
            border-color: #ff1493;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .modal-content {
            background-color: #fff0f5;
            margin: 15% auto;
            padding: 30px;
            border: none;
            border-radius: 12px;
            width: 90%;
            max-width: 400px;
            text-align: center;
            box-shadow: 0 4px 20px rgba(255, 105, 180, 0.3);
        }

        .modal h2 {
            color: #ff1493;
            margin-bottom: 20px;
        }

        .modal p {
            color: #333;
            margin-bottom: 30px;
            font-size: 16px;
        }

        .modal-buttons {
            display: flex;
            gap: 15px;
            justify-content: center;
        }

        .modal-btn {
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
            font-size: 14px;
        }

        .modal-btn-confirm {
            background-color: #f466ad;
            color: white;
        }

        .modal-btn-confirm:hover {
            background-color: #ff1493;
        }

        .modal-btn-cancel {
            background-color: #ffcce6;
            color: #f466ad;
        }

        .modal-btn-cancel:hover {
            background-color: #f466ad;
            color: #ffcce6;
        }

        .close {
            color: #45112d;
            float: right;
            font-size: 28px;
            font-weight: bold;
            margin-top: -10px;
            margin-right: -10px;
        }

        .close:hover,
        .close:focus {
            color: #ff1493;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
<h1>List of jewelry available in the store</h1>
<a href="/" class="home-btn">← Back to Home</a>

<a href="/product/create" class="add-btn">Add New Product</a>

<div class="sort-controls">
    <div class="sort-options">
        <div class="sort-group">
            <label>Sort by price</label>
            <div class="sort-buttons">
                <a href="/product?direction=asc"
                   class="sort-btn ${"asc".equals(currentDirection) ? "active" : ""}">↑ Low to High</a>
                <a href="/product?direction=desc"
                   class="sort-btn ${"desc".equals(currentDirection) ? "active" : ""}">↓ High to Low</a>
            </div>
        </div>

        <a href="/product" class="reset-btn">Reset Sort</a>
    </div>
</div>

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
                    <div class="btn-group">
                        <a href="/product/edit/${product.getId()}" class="edit-btn">Edit</a>
                        <button class="delete-btn" onclick="openDeleteModal('${product.getId()}', '${product.getName() != null ? product.getName() : "this product"}')">Delete</button>
                    </div>
                </td>
            </tr>
        @endfor
        </tbody>
    </table>
@endif

<div id="deleteModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeDeleteModal()">&times;</span>
        <h2>Confirm Deletion</h2>
        <p id="deleteMessage">Are you sure you want to delete this product?</p>
        <div class="modal-buttons">
            <button class="modal-btn modal-btn-confirm" onclick="confirmDelete()">Yes, Delete</button>
            <button class="modal-btn modal-btn-cancel" onclick="closeDeleteModal()">Cancel</button>
        </div>
    </div>
</div>

<script>
    let currentProductId = null;

    function openDeleteModal(productId, productName) {
        currentProductId = productId;
        const messageElement = document.getElementById('deleteMessage');
        messageElement.textContent = 'Are you sure you want to delete "' + productName + '"? This action cannot be undone.';
        document.getElementById('deleteModal').style.display = 'block';
    }

    function closeDeleteModal() {
        document.getElementById('deleteModal').style.display = 'none';
        currentProductId = null;
    }

    function confirmDelete() {
        if (currentProductId) {
            const form = document.createElement('form');
            form.method = 'POST';
            form.action = '/products/delete/' + currentProductId;
            document.body.appendChild(form);
            form.submit();
        }
    }

    window.onclick = function(event) {
        const modal = document.getElementById('deleteModal');
        if (event.target == modal) {
            closeDeleteModal();
        }
    }
</script>
</body>
</html>
