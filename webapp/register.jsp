<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Sign-Up</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script>
        function validateForm() {
            let registrationNumber = document.getElementById("registration_number").value.trim();
            let name = document.getElementById("name").value.trim();
            let address = document.getElementById("address").value.trim();
            let nic = document.getElementById("nic").value.trim();
            let username = document.getElementById("username").value.trim();
            let password = document.getElementById("password").value.trim();
            let isValid = true;

           
            document.querySelectorAll(".error-message").forEach(el => el.innerHTML = "");

            
            if (registrationNumber === "") {
                document.getElementById("registrationNumberError").innerHTML = "Registration number is required.";
                isValid = false;
            }

           
            if (name === "" || !/^[a-zA-Z\s]+$/.test(name)) {
                document.getElementById("nameError").innerHTML = "Valid name is required (only letters).";
                isValid = false;
            }

          
            if (address === "") {
                document.getElementById("addressError").innerHTML = "Address is required.";
                isValid = false;
            }

          
            if (nic === "" || !/^\d{9}(\d{3})?$/.test(nic)) {
                document.getElementById("nicError").innerHTML = "NIC must be a 9 or 12-digit number.";
                isValid = false;
            }

          
            if (username.length < 4) {
                document.getElementById("usernameError").innerHTML = "Username must be at least 4 characters long.";
                isValid = false;
            }

         
            if (password.length < 6) {
                document.getElementById("passwordError").innerHTML = "Password must be at least 6 characters long.";
                isValid = false;
            }

            return isValid;
        }
    </script>
</head>
<body>

<div class="container-fluid mt-5">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card shadow-sm">
                <div class="card-body">
                    <center>
                        <img src="images/1.jpg" class="card-img-top" alt="profile image" width="100px">
                        <h4 class="mt-3"><b>Customer Sign-Up</b></h4>
                        <span>Account Status: Active</span>
                    </center>
                    <hr />

                    <form method="post" action="add" onsubmit="return validateForm();">
                        
                        <div class="mb-3">
                            <label class="form-label">Registration Number</label>
                            <input type="text" class="form-control" id="registration_number" name="registration_number" placeholder="Registration Number">
                            <small class="text-danger error-message" id="registrationNumberError"></small>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                            <small class="text-danger error-message" id="nameError"></small>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Address</label>
                            <input type="text" class="form-control" id="address" name="address" placeholder="Address">
                            <small class="text-danger error-message" id="addressError"></small>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">NIC</label>
                            <input type="text" class="form-control" id="nic" name="nic" placeholder="NIC">
                            <small class="text-danger error-message" id="nicError"></small>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Username</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="Username">
                            <small class="text-danger error-message" id="usernameError"></small>
                        </div>

                        <div class="mb-3">
    <label class="form-label">Password</label>
    <input type="password" class="form-control" id="password" name="password" placeholder="Password" maxlength="16" minlength="5">
    <small class="text-danger error-message" id="passwordError"></small>
</div>
                        

                        <button type="submit" class="btn btn-danger">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>

</body>
</html>
