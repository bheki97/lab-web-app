<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/home.css">
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
                    <a class="nav-link active myLink" aria-current="page" href="/admin/adduser">Add User</a>
                    <a class="nav-link active myLink" href="/admin/addlab">Add Labs</a>
                    <a class="nav-link active myLink" href="/admin/availablelabs">Available Labs</a>
                    <a class="nav-link active myLink" href="/admin/setsecschedule">Set sec schedule</a>
                    <a class="nav-link active myLink" href="/admin/availablelabs">Lab Requests</a>
                    <a class="nav-link active myLink login rounded-pill" href="/logout" tabindex="-1" aria-disabled="true">Log Out</a>
                </div>
            </div>
        </div>
    </nav>
</div>

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
                            <h2 class="text-uppercase text-center mb-4">Registering A Lab</h2>

                            <form action="/admin/addlab" method="post" name="">
                                <div class="names form-outline mb-2 ">
                                    <div><input type="text" id="form3Example1cg" name="labno" class="form-control form-control-lg" />
                                        <label class="form-label" for="form3Example1cg">Lab No.</label>
                                    </div>
                                    <div class="ms-3"><input type="text" id="form3Example1cg" name="buildingno" class="form-control form-control-lg" />
                                        <label class="form-label" for="form3Example1cg">Buidling No.</label>
                                    </div>
                                </div>
                                <div class="names form-outline mb-2 ">
                                    <label class="form-label" for="form3Example1cg">Select Campus</label>
                                    <select name="campus" id="" class="form-select form-select-lg mb-3">
                                        <option value="Polokwane">Polokwane</option>
                                        <option value="Soshanguve">Soshanguve</option>
                                        <option value="eMalahleni">eMalahleni</option>
                                    </select>

                                </div>
                                <div>
                                    <button type="submit" class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Add LAB</button>
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


<!--Javascript-->
<script src="../js/bootstrap.bundle.min.js" ></script>
<%

    String msg = (String) session.getAttribute("msg");
    if(msg!=null){
%>
<script>
    alert("<%= msg%>")
</script>
<script src="../js/bootstrap.min.js">

</script>
<%

    }
%>




</body>
</html>