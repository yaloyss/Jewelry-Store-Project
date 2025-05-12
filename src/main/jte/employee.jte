@import com.yaloys.jewelry_store.data.Employee
@import java.util.List

@param List<Employee> employees

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employees</title>
</head>
<body>
<h1>List of our employees</h1>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Full Name</th>
        <th>Birth Date</th>
        <th>Phone Number</th>
        <th>Schedule</th>
        <th>Position</th>
    </tr>
    </thead>
    <tbody>
    @for(Employee employee : employees)
        <tr>
            <td>${employee.getId()}</td>
            <td>${employee.getFullName()}</td>
            <td>${employee.getBirthDate() != null ? employee.getBirthDate().toString() : ""}</td>
            <td>${employee.getPhoneNumber()}</td>
            <td>${employee.getSchedule()}</td>
            <td>${employee.getPosition() != null ? employee.getPosition().getPositionName() : ""}</td>
        </tr>
    @endfor
    </tbody>
</table>
</body>
</html>
