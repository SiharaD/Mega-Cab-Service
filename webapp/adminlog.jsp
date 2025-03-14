<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession sessionObj = request.getSession(false);
    if (sessionObj == null || sessionObj.getAttribute("user") == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
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
    <nav class="navbar navbar-dark navbar-expand-lg w-100">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Admin Panel</a>
        </div>
    </nav>
    <div class="dashboard">
        <h2>Welcome, <%= sessionObj.getAttribute("user") %>!</h2>
        <a href="LogoutServlet" class="btn btn-danger">Logout</a>
    </div>
    <div class="grid-container">
        <div class="grid-item" data-aos="fade-up">
            <img src="images/car.png" alt="Vehicle">
            <form action="vehicletb" method="post">
                <button class="btn btn-light mt-2" type="submit">All Vehicles</button>
            </form>
        </div>
        <div class="grid-item" data-aos="fade-up" data-aos-delay="100">
            <img src="images/profile.png" alt="Driver">
            <form action="drivertb" method="post">
                <button class="btn btn-light mt-2" type="submit">All Drivers</button>
            </form>
        </div>
        <div class="grid-item" data-aos="fade-up" data-aos-delay="200">
            <img src="images/checkout.png" alt="Bookings">
            <form action="booktb" method="post">
                <button class="btn btn-light mt-2" type="submit">All Bookings</button>
            </form>
        </div>
        <div class="grid-item" data-aos="fade-up">
            <img src="images/user.png" alt="Users">
            <form action="usertb" method="post">
                <button class="btn btn-light mt-2" type="submit">All Users</button>
            </form>
        </div>
        <div class="grid-item" data-aos="fade-up" data-aos-delay="100">
            <img src="images/favorite.png" alt="Reports">
            <button class="btn btn-light mt-2">View Reports</button>
        </div>
        <div class="grid-item" data-aos="fade-up" data-aos-delay="200">
            <img src="images/overview.png" alt="Assign">
            <form action="assign" method="post">
                <button class="btn btn-light mt-2" type="submit">All Assign</button>
            </form>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script>
        AOS.init();
    </script>
</body>
</html>