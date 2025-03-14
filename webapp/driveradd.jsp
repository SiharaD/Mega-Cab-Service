<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
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
<script>
    function validateForm() {
        let driverid = document.forms["driverForm"]["driverid"].value;
        let name = document.forms["driverForm"]["name"].value;
        let address = document.forms["driverForm"]["address"].value;
        let contact = document.forms["driverForm"]["contact"].value;
        let dob = document.forms["driverForm"]["dob"].value;
        let idnum = document.forms["driverForm"]["idnum"].value;
        let licen = document.forms["driverForm"]["licen"].value;
        
        if (driverid.trim() === "" || name.trim() === "" || address.trim() === "" || 
            contact.trim() === "" || dob.trim() === "" || idnum.trim() === "" || licen.trim() === "") {
            alert("All fields must be filled out");
            return false;
        }
        if (isNaN(contact) || contact.length < 10) {
            alert("Contact number must be a valid 10-digit number");
            return false;
        }
        if (isNaN(dob) || dob.length !== 4) {
            alert("Date of Birth must be a valid 4-digit year");
            return false;
        }
        return true;
    }
</script>
</head>
<body>
<div class="login-container">
    <h2><i class="fas fa-user-circle"></i> Be a driver</h2>
    <form name="driverForm" method="post" action="adddriver" onsubmit="return validateForm()">
        <div class="mb-3">
            <label class="form-label">Driver ID</label>
            <input type="text" class="form-control" name="driverid" placeholder="Enter Driver ID">
        </div>
        <div class="mb-3">
            <label class="form-label">Name</label>
            <input type="text" class="form-control" name="name" placeholder="Enter Name">
        </div>
        <div class="mb-3">
            <label class="form-label">Address</label>
            <input type="text" class="form-control" name="address" placeholder="Enter Address">
        </div>
        <div class="mb-3">
            <label class="form-label">Contact</label>
            <input type="text" class="form-control" name="contact" placeholder="Enter Contact Number">
        </div>
        <div class="mb-3">
            <label class="form-label">Date of Birth</label>
            <input type="text" class="form-control" name="dob" placeholder="Enter Year of Birth">
        </div>
        <div class="mb-3">
            <label class="form-label">ID Number</label>
            <input type="text" class="form-control" name="idnum" placeholder="Enter ID Number">
        </div>
        <div class="mb-3">
            <label class="form-label">Driving License Card Number</label>
            <input type="text" class="form-control" name="licen" placeholder="Enter License Number">
        </div>
        <div class="mb-3">
            <button type="submit" class="btn btn-danger"  onclick="showMessage()">Submit</button>
        </div>
    </form>
</div>
  <script>
        function showMessage() {
            alert("driver added!");
        }
    </script>

</body>
</html>
