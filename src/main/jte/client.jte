@import com.yaloys.jewelry_store.data.Client
@import java.util.List

@param List<Client> clients

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
    @for(Client client : clients)
        <tr>
            <td>${client.getId()}</td>
            <td>${client.getFullName()}</td>
            <td>${client.getBirthDate() != null ? client.getBirthDate().toString() : ""}</td>
            <td>${client.getPhoneNumber()}</td>
        </tr>
    @endfor
    </tbody>
</table>
</body>
</html>
