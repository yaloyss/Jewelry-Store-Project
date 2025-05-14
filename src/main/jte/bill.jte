@import com.yaloys.jewelry_store.data.Bill
@import java.util.List

@param List<Bill> bills

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customers</title>
</head>
<body>
<h1>List of our loyal customers</h1>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Full Name</th>
        <th>Birth Date</th>
        <th>Phone number</th>
    </tr>
    </thead>
    <tbody>
    @for(Bill bill : bills)
        <tr>
            <td>${bill.getBillId()}</td>
            <td>${bill.getBillDate() != null ? bill.getBillDate().toString() : ""}</td>
            <td>${bill.getProductId()}</td>
            <td>${bill.getEmployeeId()}</td>
            <td>${bill.getClientId()}</td>
        </tr>
    @endfor
    </tbody>
</table>
</body>
</html>