<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/scrollreveal/4.0.9/scrollreveal.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
   
    <style>
        .navbar {
            background: rgba(0, 0, 0, 0.5) !important;
            transition: background 0.3s ease;
        }
        .navbar .nav-link {
            color: white !important;
            font-weight: bold;
        }
        .navbar .nav-link:hover {
            color: #ff6600 !important;
        }
        body {
            background: linear-gradient(-45deg, #8B0000, #4B0082, #2F4F4F, #000000);
            background-size: 400% 400%;
            animation: gradientBG 8s ease infinite;
            color: white;
            font-family: Arial, sans-serif;
        }
        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
        .hero {
            width: 100%;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            position: relative;
            background: url('images/1.jpg') center/cover no-repeat;
        }
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6);
        }
        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 600px;
            padding: 20px;
        }
        /* Booking Section */
        .booking-section {
            padding: 50px 0;
            background: rgba(255, 255, 255, 0.05);
            text-align: center;
        }
        .booking-form {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            backdrop-filter: blur(15px);
            box-shadow: 0 4px 10px rgba(255, 255, 255, 0.1);
        }
        .booking-form input, .booking-form button {
            border-radius: 5px;
        }
        #map {
            width: 100%;
            height: 500px;
        }
        .loader {
            position: fixed;
            top: 0; left: 0;
            width: 100vw; height: 100vh;
            background: white;
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 9999;
        }
        .fade-in { opacity: 0; transition: opacity 1s ease-in-out; }
        .slide-in-left { transform: translateX(-50px); opacity: 0; transition: transform 1s ease-in-out, opacity 1s; }
        .team-card:hover { transform: scale(1.1) rotateY(10deg); transition: all 0.3s ease-in-out; }
        .pulse-effect { animation: pulse 2s infinite; }
        @keyframes pulse { 0% { transform: scale(1); } 50% { transform: scale(1.05); } 100% { transform: scale(1); } }
    /*=======================================================================================================*/
  #id5 {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh; /* Full viewport height */
    text-align: center;
}


h1 {
    font-size: 2.5rem;
    color: white;
    margin-bottom: 20px;
}

.testimonial-container {
    width: 90%;
    max-width: 800px;
    background: rgba(255, 255, 255, 0.1);
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    backdrop-filter: blur(10px);
}

.swiper {
    width: 100%;
    padding: 20px 0;
}

.swiper-slide {
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
    padding: 20px;
}

.testimonial img {
    width: 80px;
    height: 80px;
    border-radius: 50%;
    object-fit: cover;
    margin-bottom: 15px;
}

.testimonial p {
    font-size: 16px;
    color: white;
    max-width: 600px;
    margin: 0 auto 10px;
}

.testimonial h4 {
    margin-top: 10px;
    color: #f1f1f1;
    font-size: 18px;
}

.swiper-pagination {
    position: relative;
    margin-top: 10px;
}

        /*====================================================================================*/
      

/* Footer Styling */

.footer {
            background: rgba(0, 0, 0, 0.8);
            color: white;
            padding: 10px 0;
            text-align: center;
            font-size: 14px;
            position: relative;
            width: 100%;
        }
        .footer a {
            color: #ffcc00;
            text-decoration: none;
        }
        .footer a:hover {
            text-decoration: underline;
        }


        /*======================================================================================*/
    </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">Mega City Cabs</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#services">Services</a></li>
                    <li class="nav-item"><a class="nav-link" href="LogoutServlet">log out</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="hero">
        <div class="overlay"></div>
        <div class="hero-content">
            <h1>Welcome to Mega City Cabs</h1>
            <p>Your Reliable Transport Partner</p>
            <button class="btn btn-warning" onclick="changeBackground()">Change Background</button>
        </div>
    </div>

    <section id="services" class="services-section">
        <div class="container">
            <h2 class="mb-5" data-aos="fade-up">Our Services</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="service-card p-4" data-aos="zoom-in">
                        <a href="driveradd.jsp"><!--methana yanna ona page eke link eka denna-->
                        <i class="fas fa-plane fa-3x mb-3" ></i>
                        </a>
                        <h4>Register as a driver</h4>
                        <p>Seamless and comfortable rides to and from the airport.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="service-card p-4" data-aos="zoom-in" data-aos-delay="200">
                    <a href="vehicleadd.jsp"> 
                      <i class="fas fa-car-side fa-3x mb-3"></i>
                    </a>
                      
                        <h4>Register your car</h4>
                        <p>Reliable transport for your daily commutes.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="service-card p-4" data-aos="zoom-in" data-aos-delay="400">
                    <a href="logasdriver.jsp">
                        <i class="fas fa-gem fa-3x mb-3"></i>
                        </a>
                        <h4>update your driver profile</h4>
                        <p>Premium cars for special occasions and business trips.</p>
                    </div>
                </div>
            </div>
            <!-- ------------------------------------------------------------------------------------------------- -->
             <div class="row">
                <div class="col-md-4">
                    <div class="service-card p-4" data-aos="zoom-in">
                        <a href="updatevehicle.jsp"><!--methana yanna ona page eke link eka denna-->
                        <i class="fas fa-plane fa-3x mb-3" ></i>
                        </a>
                        <h4>Update your vehicle</h4>
                        <p>Seamless and comfortable rides to and from the airport.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="service-card p-4" data-aos="zoom-in" data-aos-delay="200">
                    <a href="helpchoice.jsp">
                        <i class="fas fa-car-side fa-3x mb-3"></i>
                        </a>
                        <h4>Help</h4>
                        <p>Reliable transport for your daily commutes.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="service-card p-4" data-aos="zoom-in" data-aos-delay="400">
                        <i class="fas fa-gem fa-3x mb-3"></i>
                        <h4>Luxury Cars</h4>
                        <p>Premium cars for special occasions and business trips.</p>
                    </div>
                </div>
            </div>
            <!-- -------------------------------------------------------------------------------------------------- -->
        </div>
    </section>
    
    <!-- Booking Section -->
    <section class="booking-section" id="booking">
        <div class="container">
            <h2 class="mb-4">Book Your Ride</h2>
             <form method="post" action="BillServlet">
                        <div class="mb-3">
                            <label class="form-label">Booking Number</label>
                            <input type="number" class="form-control" name="order_number" placeholder="Booking Number" min="1" max="9999">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Customer Name</label>
                            <input type="text" class="form-control" name="name" placeholder="Name" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Address</label>
                            <input type="text" class="form-control" name="address" placeholder="Address" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Telephone Number</label>
                            <input type="number" class="form-control" name="tel" placeholder="Telephone" required>
                        </div>
                        <div class="mb-3">
                            <h1>Destination Details</h1>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Address</label>
                            <input type="text" class="form-control" name="desaddress" placeholder="Destination Address" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Distance</label>
                            <input type="number" class="form-control" name="destance" placeholder="Distance" required>
                        </div>
                        <div class="mb-3">
                            <label for="options">Choose a Vehicle:</label>
                            <select id="options" name="option" class="form-control">
                                <option value="100">Tuk Tuk</option>
                                <option value="200">Van</option>
                                <option value="300">Car</option>
                                <option value="400">Jeep</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-danger" >Submit</button>
                        </div>
                    </form>
                    
                    
                    
                      <form action="BillServlet" method="post">
        <input type="hidden" name="action" value="download">
        <label for="bookingNumber">Enter Booking Number:</label>
        <input type="text" id="bookingNumber" name="bookingNumber" required>
        <button type="submit">Download Receipt</button>
    </form>
        </div>
    </section id="id6" >
    
    <section id="map-section" class="container my-5">
        <h2 class="mb-4" style="text-align: center;">Our Location</h2>
        <div id="map"></div>
    </section>
<section>
    <!--------------------------------------------------------------------------------------->
   
    <div class="loader">
        <h2 class="animate__animated animate__flash">Loading...</h2>
    </div>
    <h1 style="text-align: center;">Our Special services</h1>

    <div class="container mt-5">
        <h1 class="text-center fade-in">About <span id="typing"></span></h1>
        <p class="text-center slide-in-left">We are passionate about innovation and creativity.</p>
        
        <div class="row mt-5">
            <div class="col-md-4">
                <div class="card team-card shadow-lg text-center">
                    <img src="images/6.jpg" class="card-img-top" alt="Team Member">
                    <div class="card-body">
                        <h5 class="card-title">Market</h5>
                        <p class="card-text">Founder & CEO</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card team-card shadow-lg text-center pulse-effect">
                    <img src="images/7.jpg" class="card-img-top" alt="Team Member">
                    <div class="card-body">
                        <h5 class="card-title">Food</h5>
                        <p class="card-text">CTO</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card team-card shadow-lg text-center">
                    <img src="images/1.jpg" class="card-img-top" alt="Team Member">
                    <div class="card-body">
                        <h5 class="card-title">Sport vehicles</h5>
                        <p class="card-text">Lead Designer</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
<!------------------------------------------------------------------------------------------------------------>

<section id="id5">
    <h1 data-aos="fade-up">What Our Clients Say</h1>
<div class="testimonial-container" data-aos="fade-up">
    <div class="swiper testimonial-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide testimonial">
                <img src="https://randomuser.me/api/portraits/women/1.jpg" alt="User">
                <p>"Amazing service! Highly recommend to everyone."</p>
                <h4>- Sarah Johnson</h4>
            </div>
            <div class="swiper-slide testimonial">
                <img src="https://randomuser.me/api/portraits/men/2.jpg" alt="User">
                <p>"Fantastic experience, I will definitely return!"</p>
                <h4>- Michael Brown</h4>
            </div>
            <div class="swiper-slide testimonial">
                <img src="https://randomuser.me/api/portraits/women/3.jpg" alt="User">
                <p>"Best service I have ever used. Highly satisfied!"</p>
                <h4>- Emily Davis</h4>
            </div>
        </div>
        <div class="swiper-pagination"></div>
    </div>
</div>
<!------------------------------------------------------------------------------------------------------->

<footer class="footer">
    <div class="container">
        <p>&copy; 2025 Mega City Cabs. All Rights Reserved. | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </div>
</footer>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<!-------------------------------------------------------------------------------------------------------->
    
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
<script>
    AOS.init();
    var swiper = new Swiper('.testimonial-slider', {
        loop: true,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        autoplay: {
            delay: 3000,
            disableOnInteraction: false,
        },
        spaceBetween: 20,
    });
</script>
</section>
<!--*************************************************************************************************************-->
    <script>
        function initMap() {
            var mapOptions = {
                center: { lat: 6.9271, lng: 79.8612 }, // Colombo, Sri Lanka
                zoom: 12
            };
            var map = new google.maps.Map(document.getElementById("map"), mapOptions);
        }
    </script>
    <script 
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-990be4rJqnxvhWoF89dW4WixP9Mq_-M&callback=initMap" 
        async defer>
    </script>
    
    <script>
        AOS.init();
        function changeBackground() {
            document.querySelector('.hero').style.background = "linear-gradient(120deg, #f6d365, #fda085)";
        }
    </script>
    
    <script>
        AOS.init();
        function changeBackground() {
            document.querySelector('.hero').style.background = "linear-gradient(120deg, #f6d365, #fda085)";
        }
    </script>
     <script>
        window.addEventListener("load", function() {
            document.querySelector(".loader").style.display = "none";
        });
        ScrollReveal().reveal('.fade-in', { delay: 500, distance: '50px', origin: 'bottom' });
        ScrollReveal().reveal('.slide-in-left', { delay: 700, distance: '50px', origin: 'left' });
        new Typed("#typing", { strings: ["Us", "Creativity", "Innovation"], typeSpeed: 100, backSpeed: 50, loop: true });
   
   //***************************************************************************************************
  
   </script>

</body>
</html>