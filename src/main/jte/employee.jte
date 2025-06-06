@import com.yaloys.jewelry_store.data.Employee
@import java.util.List

@param List<Employee> employees
@param String searchedObject = null
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
            color: #ff009e;
            margin-bottom: 30px;
        }

        .search-controls {
            background-color: #fff0f5;
            padding: 20px;
            border-radius: 12px;
            margin-bottom: 30px;
            box-shadow: 0 0 10px rgba(255, 105, 180, 0.1);
            max-width: 1163px;
            margin: 0 auto 30px auto;
        }

        .search-controls h3 {
            color: #ff69b4;
            margin-bottom: 15px;
            font-size: 18px;
        }

        .search-form {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 15px;
            flex-wrap: wrap;
        }

        .search-input {
            padding: 10px 15px;
            border: 2px solid #ff69b4;
            border-radius: 6px;
            font-size: 14px;
            width: 250px;
            background-color: white;
            color: #333;
            font-family: 'Raleway', sans-serif;
            transition: all 0.3s ease;
        }

        .search-input:focus {
            outline: none;
            border-color: #ff1493;
            box-shadow: 0 0 8px rgba(255, 20, 147, 0.3);
        }

        .search-btn {
            background-color: #ff69b4;
            color: white;
            padding: 10px 20px;
            border: 2px solid transparent;
            border-radius: 6px;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            font-family: 'Raleway', sans-serif;
        }

        .search-btn:hover {
            background-color: #ff1493;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(255, 20, 147, 0.3);
            border-color: #ff1493;
        }

        .clear-btn {
            background-color: #fff8f0;
            color: #ff1493;
            border: 2px solid #ff1493;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 6px;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            font-family: 'Raleway', sans-serif;
        }

        .clear-btn:hover {
            background-color: #ff69b4;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(255, 20, 147, 0.3);
        }

        .search-info {
            margin-top: 15px;
            color: #ff1493;
            font-style: italic;
            font-size: 14px;
        }

        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 95%;
            max-width: 1200px;
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

        .id-column {
            width: 80px;
            text-align: center;
        }

        .name-column {
            width: 200px;
            min-width: 150px;
        }

        .birth-date-column {
            width: 150px;
            min-width: 120px;
            text-align: center;
        }

        .phone-column {
            width: 150px;
            min-width: 130px;
        }

        .schedule-column {
            width: 140px;
            height: 40px;
            min-width: 100px;
        }

        .position-column {
            width: 180px;
            min-width: 150px;
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
            background-color: #fff0f5;
            border-radius: 12px;
            margin: 20px auto;
            max-width: 1200px;
            box-shadow: 0 0 10px rgba(255, 105, 180, 0.1);
        }

    </style>
</head>
<body>
<h1>List of our employees</h1>

<div class="search-controls">
    <h3>Search Employees by Name</h3>
    <form class="search-form" method="GET" action="/employee">
        <input type="text"
               name="search"
               class="search-input"
               placeholder="Enter employee name"
               value="${searchedObject != null ? searchedObject : ""}"
               maxlength="50">
        <button type="submit" class="search-btn">🔍 Search</button>
        @if(searchedObject != null && !searchedObject.trim().isEmpty())
            <a href="/employee" class="clear-btn">Clear Search</a>
        @endif
    </form>

    @if(searchedObject != null && !searchedObject.trim().isEmpty())
        <div class="search-info">
            Showing results for: "${searchedObject}"
        </div>
    @endif
</div>

@if(employees.isEmpty())
    <div class="empty-message">
        @if(searchedObject != null && !searchedObject.trim().isEmpty())
            <p>No employees found matching "${searchedObject}". Try a different search term.</p>
        @else
            <p>No employees are available.</p>
        @endif
    </div>
@else
    <table>
        <thead>
        <tr>
            <th class="id-column">ID</th>
            <th class="name-column">Full Name</th>
            <th class="birth-date-column">Birth Date</th>
            <th class="phone-column">Phone Number</th>
            <th class="schedule-column">Schedule</th>
            <th class="position-column">Position</th>
        </tr>
        </thead>
        <tbody>

        @for(Employee employee : employees)
            <tr>
                <td class="id-column">${employee.getId()}</td>
                <td class="name-column">${employee.getFullName()}</td>
                <td class="birth-date-column">${employee.getBirthDate() != null ? employee.getBirthDate().toString() : ""}</td>
                <td class="phone-column">${employee.getPhoneNumber()}</td>
                <td class="schedule-column">${employee.getSchedule()}</td>
                <td class="position-column">${employee.getPosition() != null ? employee.getPosition().getPositionName() : ""}</td>
            </tr>
        @endfor
        </tbody>
    </table>
@endif

</body>
</html>