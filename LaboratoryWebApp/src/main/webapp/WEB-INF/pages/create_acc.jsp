<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" >
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
<div class="container table-container">
    <div class="mask d-flex align-items-center h-100 gradient-custom-3">
        <div class="container h-100 sign-form">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                    <div class="" style="border-radius: 15px;">
                        <div class="custom-card p-3">
                            <h2 class="text-center mb-3">Add New User account</h2>

                            <form action="/admin/adduser" method="post">
                                <div class="names form-outline mb-2 ">
                                    <div><input type="text" id="form3Example1cg" name="surname" class="form-control form-control-lg" />
                                        <label class="form-label" for="form3Example1cg">Your Surname</label>
                                    </div>
                                    <div class="ms-3"><input type="text" id="form3Example1cg" name="name" class="form-control form-control-lg" />
                                        <label class="form-label" for="form3Example1cg">Your Name</label>
                                    </div>
                                </div>
                                <div class="names form-outline mb-2 ">
                                    <div class="mr-3"><input type="number" min="0" id="form3Example1cg" name="cellno" class="form-control form-control-lg" />
                                        <label class="form-label" for="form3Example1cg">Your Cell No.</label>
                                    </div>
                                    <div class="ml-3"><input type="number" min="0" id="form3Example1cg" name="userid" class="form-control form-control-lg" />
                                        <label class="form-label" for="form3Example1cg">Your Staff/Student No.</label>
                                    </div>
                                </div>
                                <div class="names form-outline mb-2">
                                    <div >
                                        <label for="rol">Role </label>
                                        <select name="role" id="rol" onchange="showPosOpt(value)">
                                            <option value="security">Security</option>
                                            <option value="studadmin">Student Admin</option>
                                        </select>

                                    </div>
                                    <div  id="posDiv" style="display: none;">
                                        <label for="pos">Position </label>
                                        <select name="position" id="pos">
                                            <option value="Lecture">Lecture</option>
                                            <option value="Tutor">Tutor</option>
                                            <option value="Lab Assistant">Lab Ass.</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-outline mb-2">
                                    <input type="email" id="form3Example3cg" name="email" class="form-control form-control-md" />
                                    <label class="form-label" for="form3Example3cg">Your Email</label>
                                </div>

                                <div class="form-outline mb-2">
                                    <input type="password" id="form3Example4cg" name="passwrd"  class="form-control form-control-md" />
                                    <label class="form-label" for="form3Example4cg">Password</label>
                                </div>

                                <p class="text-center text-muted mt-2 mb-2" style="color:#E4B312 !important;">Have already an account? <a href="/home/login" class="fw-bold text-body" style="color: #CE1127 !important;"><u>Login here</u></a></p>
                                <div class="d-flex justify-content-center">
                                    <button type="submit" class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>
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
<%

    String msg = (String) session.getAttribute("msg");
    if(msg!=null && !msg.equalsIgnoreCase("Welcome User")){
%>
<script>
    alert("<%= msg%>")
</script>
<%

    }
%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

</body>
<script>
    function showPosOpt(value){
        var posDiv = document.getElementById('posDiv');
        if(value == 'studadmin'){
            posDiv.style.display = 'block';
        }else{
            posDiv.style.display = 'none';
        }
    }
</script>

</html>