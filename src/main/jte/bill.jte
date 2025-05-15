@import com.yaloys.jewelry_store.data.Bill
@import java.util.List

@param List<Bill> bills

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bills</title>
</head>
<body>
<h1>List of bills</h1>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Date</th>
        <th>Product name</th>
        <th>Price</th>
        <th>Client name</th>
        <th>Employee name</th>
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