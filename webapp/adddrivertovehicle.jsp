<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Page</title>
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
    <form method="post" action="addassign">
        <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label">Driver ID</label>
            <input type="text" class="form-control" id="formGroupExampleInput" name="did" placeholder="Enter your name" required>
        </div>

        <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label">Vehicle ID</label>
            <input type="number" class="form-control" id="formGroupExampleInput" name="vid" placeholder="Enter your age" required>
        </div>

        <button type="submit" class="btn">Submit</button>
    </form>
</body>
</html>
