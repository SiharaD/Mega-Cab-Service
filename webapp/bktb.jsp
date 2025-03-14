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
        /* Background Animation */
        body {
            background: linear-gradient(-45deg, #8B0000, #4B0082, #2F4F4F, #000000);
            background-size: 400% 400%;
            animation: gradientBG 8s ease infinite;
            color: white;
            font-family: Arial, sans-serif;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 20px;
        }
        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Transparent DataTable Styling */
        .table-container {
            width: 90%;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(255, 255, 255, 0.2);
        }
        .dataTable th, .dataTable td {
            color: black;
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
        }
    </style>
</head>
<body>

    <h1 class="mb-4">Customer Information Table</h1>

    <div class="table-container">
        <table id="dataTable" class="table table-hover">
            <thead>
    <tr>
      <th scope="col">bookingNumber</th>
      <th scope="col">customerName</th>
      <th scope="col">address</th>
      <th scope="col">telephone</th>
       <th scope="col">destination address</th>
       <th scope="col">distance</th>
        <th scope="col">amount</th>
         <th scope="col">action</th>
         
          <th scope="col">actions</th>
      
    </tr>
  </thead>
  <tbody>
  
  <c:forEach var="cus" items="${cust}">
  <tr>
  <td>${cus.bookingNumber}</td>
  <td>${cus.customerName}</td>
  <td>${cus.address}</td>
  <td>${cus.telephone}</td>
  <td>${cus.destinationAddress}</td>
  <td>${cus.vehicle}</td>
  <td>${cus.amount}</td>
  
   <td><form action="" method="post">
    <input type="hidden" name="idnum" value="${cus.bookingNumber}">
    <button type="submit">add</button>
    </form></td>
    <td>
    <form action ="delbk" method="post">
    <input type="hidden" name="bookingNumber" value="${cus.bookingNumber}">
    <button type="submit">delete</button>
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