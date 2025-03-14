<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Data Table</title>

    <!-- Bootstrap 5 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- DataTables CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">

    <style>
      /* Black and Orange Color Theme */
:root {
  --primary-color: #FFA500; /* Orange */
  --secondary-color: #000000; /* Black */
  --background-color: #1A1A1A; /* Dark Gray */
  --text-color: #FFFFFF; /* White */
  --accent-color: #FF8C00; /* Darker Orange */
}

/* General Body Styling */
body {
  background-color: var(--background-color);
  color: var(--text-color);
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  text-align: center;
  line-height: 1.6;
}

/* Headings */
h1, h2, h3, h4, h5, h6 {
  color: var(--primary-color);
  margin: 20px 0;
}

h1 {
  font-size: 2.5rem;
}

h2 {
  font-size: 2rem;
}

h3 {
  font-size: 1.75rem;
}

/* Links */
a {
  color: var(--primary-color);
  text-decoration: none;
}

a:hover {
  color: var(--accent-color);
  text-decoration: underline;
}

/* Buttons */
button {
  background-color: var(--primary-color);
  color: var(--secondary-color);
  border: none;
  padding: 10px 20px;
  font-size: 1rem;
  cursor: pointer;
  border-radius: 5px;
  transition: background-color 0.3s ease;
  margin: 10px;
}

button:hover {
  background-color: var(--accent-color);
}

/* Input Fields */
input, textarea, select {
  background-color: var(--secondary-color);
  color: var(--text-color);
  border: 1px solid var(--primary-color);
  padding: 10px;
  border-radius: 5px;
  font-size: 1rem;
  margin: 10px;
  width: 80%;
  max-width: 300px;
}

input:focus, textarea:focus, select:focus {
  outline: none;
  border-color: var(--accent-color);
}

/* Cards or Containers */
.card {
  background-color: var(--secondary-color);
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  margin: 20px;
  width: 80%;
  max-width: 600px;
  text-align: center;
}

/* Navigation Bar */
.navbar {
  background-color: var(--secondary-color);
  padding: 10px 20px;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
}

.navbar a {
  color: var(--primary-color);
  margin: 0 15px;
  font-size: 1.1rem;
}

.navbar a:hover {
  color: var(--accent-color);
}

/* Footer */
.footer {
  background-color: var(--secondary-color);
  color: var(--primary-color);
  text-align: center;
  padding: 20px;
  width: 100%;
  margin-top: auto;
}

/* Utility Classes */
.text-center {
  text-align: center;
}

.mt-20 {
  margin-top: 20px;
}

.mb-20 {
  margin-bottom: 20px;
}

/* Responsive Design */
@media (max-width: 768px) {
  h1 {
    font-size: 2rem;
  }

  h2 {
    font-size: 1.75rem;
  }

  .navbar {
    flex-direction: column;
    align-items: center;
  }

  .navbar a {
    margin: 10px 0;
  }
}
    </style>
</head>
<body>

    <h1 class="mb-4">Customer Information Table</h1>

    <div class="table-container">
        <table id="dataTable" class="table table-hover">
            <thead>
                <tr>
                    <th>Registration Number</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>NIC</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="cus" items="${cust}">
                    <tr>
                        <td>${cus.registration_number}</td>
                        <td>${cus.name}</td>
                        <td>${cus.address}</td>
                        <td>${cus.nic}</td>
                        <td>${cus.username}</td>
                        <td>${cus.password}</td>
                        <td>
                            <form action="" method="post" class="d-inline">
                                <input type="hidden" name="registration_number" value="${cus.registration_number}">
                                <button type="submit" class="btn btn-success btn-sm">Add</button>
                            </form>
                            <form action="deluser" method="post" class="d-inline">
                                <input type="hidden" name="registration_number" value="${cus.registration_number}">
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- jQuery and DataTables JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#dataTable').DataTable({
                paging: true,
                searching: true,
                ordering: true,
                responsive: true,
                lengthMenu: [5, 10, 15, 20],
                pageLength: 5
            });
        });
    </script>

</body>
</html>