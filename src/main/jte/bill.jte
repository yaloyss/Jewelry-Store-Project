@import com.yaloys.jewelry_store.data.Bill
@import java.util.List

@param List<Bill> bills
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bills</title>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: white;
            font-family: 'Raleway', sans-serif;
            text-align: center;
            padding: 40px;
            margin: 0;
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

        h1 {
            color: #ff69b4;
            margin-bottom: 30px;
        }

        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 90%;
            max-width: 900px;
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
<h1>List of bills</h1>
<a href="/" class="home-btn">← Back to Home</a>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Date</th>
        <th>Product Name</th>
        <th>Price</th>
        <th>Client Name</th>
        <th>Employee Name</th>
    </tr>
    </thead>
    <tbody>
    @for(Bill bill : bills)
        <tr>
            <td>${bill.getBillId()}</td>
            <td>${bill.getBillDate() != null ? bill.getBillDate().toString() : ""}</td>
            <td>${bill.getProduct().getName()}</td>
            <td>${bill.getProduct().getPrice()}</td>
            <td>${bill.getClient().getFullName()}</td>
            <td>${bill.getEmployee().getFullName()}</td>
        </tr>
    @endfor
    </tbody>
</table>
</body>
</html>