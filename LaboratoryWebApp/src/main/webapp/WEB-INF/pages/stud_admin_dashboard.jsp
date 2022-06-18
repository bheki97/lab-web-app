<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
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
                    <a class="nav-link active myLink" aria-current="page" href="/studentadmin/">Sign in/out</a>
                    <a class="nav-link active myLink" href="/studentadmin/requestlab">Request Lab</a>
                    <a class="nav-link active myLink" href="#">Available Lab</a>
                    <a class="nav-link active myLink login rounded-pill" href="#" tabindex="-1" aria-disabled="true">Log out</a>
                </div>
            </div>
        </div>
    </nav>
</div>
<div class="container table-container">
    <h2>Logged In As Student Admin <br> Lecture/Tutor/Lab Assistants</h2>

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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<%

    String msg = (String) session.getAttribute("msg");
    if(msg!=null){
%>
<script>
    alert("<%= msg%>")
</script>
<%

    }
%>
</body>

</html>