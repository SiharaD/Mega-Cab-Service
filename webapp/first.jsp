<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
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
 <h1>Welcome to Mega City cab service</h1>
    <div class="road">
        <div class="car">🚖<div class="light"></div></div>
    </div>
    <div class="cloud">☁️</div>
    <div class="cloud" style="top: 80px; left: -200px;">☁️</div>

    <!-- Buttons to control animation -->
    <div class="buttons">
        <!-- <button class="btn btn-start" onclick="startAnimation()">Start Animation</button>
        <button class="btn btn-stop" onclick="stopAnimation()">Stop Animation</button> -->
        <a href="register.jsp">
          <button class="btn btn-stop">register here</button>
        </a>
    </div>
<div class="buttons">
<a href="index.jsp">
        <button class="btn btn-start" >log as administrator</button>
        </a>
        <a href="log.jsp">
        <button class="btn btn-stop" >log as user</button>
        </a>
    </div>
    <script>
        let carAnimation = gsap.to(".car", {
            x: window.innerWidth + 150,
            duration: 5,
            repeat: -1,
            ease: "linear",
            paused: false
        });

        let cloudAnimation = gsap.to(".cloud", {
            x: window.innerWidth + 200,
            duration: 10,
            repeat: -1,
            ease: "linear",
            paused: false
        });

        let lightAnimation = gsap.to(".light", {
            opacity: 0.3,
            duration: 0.5,
            repeat: -1,
            yoyo: true,
            paused: false
        });

        gsap.fromTo("h1", 
            { opacity: 0, scale: 0.5 }, 
            { opacity: 1, scale: 1, duration: 1.5, ease: "bounce.out" }
        );

        function startAnimation() {
            carAnimation.play();
            cloudAnimation.play();
            lightAnimation.play();
        }

        function stopAnimation() {
            carAnimation.pause();
            cloudAnimation.pause();
            lightAnimation.pause();
        }
    </script>
</body>
</html>