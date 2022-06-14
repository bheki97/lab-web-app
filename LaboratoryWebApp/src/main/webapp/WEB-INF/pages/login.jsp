<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body {
            background-color: #4B73A7 !important;
            height: 100vh;
            min-width: 300px;
            display: flex;
            flex-flow: column;
        }

        .custom-nav {
            flex-grow: 1;
        }

        .myNav {
            background-color: #003883 !important;
            text-align: center;
        }

        .myBrand {
            color: #ffffff !important;
            font-family: 'Secular One';
            font-size: 2em;
        }

        .table-container {
            flex-grow: 10;
        }

        h1 {
            font-weight: bolder;
            text-align: center;
            margin-top: 20px;
        }

        .myLink {
            color: #E4B312 !important;
            font-weight: bold;
            margin-left: 30px;
            margin-right: 30px;
        }

        h2 {
            font-weight: bolder !important;
            font-family: 'Courier New', Courier, monospace;
            font-size: 40px;
        }

        .schedule {
            border-collapse: collapse;
            min-width: 300px;
            margin-bottom: 60px !important;
            width: 80%;
            background-color: #F1ECEC;
        }

        .login {
            background-color: #CE1127;
            padding: 5px;
        }

        footer {
            background-color: #F1ECEC;
            flex-grow: 1;
            width: 100%;
        }

        .sign-form {
            margin-bottom: 50px;
            max-height: 100%;
            max-width: 80%;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            max-height: fit-content;
            font-size: 16px !important;
            padding: 0px 5px;
        }

        .names {
            display: flex;
            flex-direction: row;
        }

        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }
        /* Firefox */

        input[type=number] {
            -moz-appearance: textfield;
        }
    </style>
</head>

<body>

<div class="items-stretch custom-nav">
    <nav class="myNav navbar navbar-expand-lg navbar-light bg-light">
        <div class="container d-flex justify-content-between">
            <a class="navbar-brand myBrand" href="index.html">T-Lab Manager</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="justify-content-end collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active myLink" aria-current="page" href="/home">Home</a>
                    <a class="nav-link active myLink" href="#">Schedule</a>
                    <a class="nav-link active myLink" href="#">Contacts</a>
                    <a class="nav-link active myLink login rounded-pill" href="login.html" tabindex="-1" aria-disabled="true">Login</a>
                </div>
            </div>
        </div>
    </nav>
</div>
<div class="container table-container">
    <div class=" mask d-flex align-items-center h-100 gradient-custom-3">
        <div class="container h-100 sign-form">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                    <div class="" style="border-radius: 15px;">
                        <div class="custom-card p-5">
                            <h2 class="text-uppercase text-center mb-4">Login</h2>

                            <form action="" method="post">
                                <div class="form-outline mb-2">
                                    <input type="email" id="form3Example3cg" name="email" class="form-control form-control-lg" />
                                    <label class="form-label" for="form3Example3cg">Your Email/Staff/Student No.</label>
                                </div>

                                <div class="form-outline mb-2">
                                    <input type="password" id="form3Example4cg" name="passwrd"  class="form-control form-control-lg" />
                                    <label class="form-label" for="form3Example4cg">Password</label>
                                </div>

                                <p class="text-center text-muted mt-2 mb-2" style="color:#E4B312 !important;">Have already an account? <a href="#!" class="fw-bold text-body" style="color: #CE1127 !important;"><u>Login here</u></a></p>
                                <div class="d-flex justify-content-center">
                                    <button type="submit" class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Login</button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class=" bg-light text-center text-lg-start">
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: #385194;">
        © 2022 Copyright:
        <a class="text-dark" href="index.html">TUT Laboratory Management System</a>
    </div>
    <!-- Copyright -->
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
</body>

</html>