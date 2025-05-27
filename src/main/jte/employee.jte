@import com.yaloys.jewelry_store.data.Employee
@import java.util.List

@param List<Employee> employees
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employees</title>
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
<h1>List of our employees</h1>
<table>
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