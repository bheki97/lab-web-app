<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="<c:url value="../css/home.css" />" rel="stylesheet" >
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/home.css">
</head>

<body>


<div class="items-stretch custom-nav">
    <nav class="myNav navbar navbar-expand-lg navbar-light bg-light">
        <div class="container d-flex justify-content-between">
            <a class="navbar-brand myBrand" href="/home">T-Lab Manager</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="justify-content-end collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active myLink" aria-current="page" href="/home">Open/Close Lab</a>
                    <a class="nav-link active myLink" href="">View Opened</a>
                    <a class="nav-link active myLink" href="#">View Requests</a>
                    <a class="nav-link active myLink login rounded-pill" href="home/signup" tabindex="-1" aria-disabled="true">Log Out</a>
                </div>
            </div>
        </div>
    </nav>
</div>
<div class="container table-container">
    <h2>Schedule For Labs</h2>
    <table class="schedule rounded-top  m-auto">
        <thead class="">
        <tr>
            <td class="myLink">Lab Opener</td>
            <td class="myLink">Lab No.</td>
            <td class="myLink">Scheduled Time</td>
            <td class="myLink">Duration</td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>V Memani</td>
            <td>10-252</td>
            <td>2022/05/27 15h00</td>
            <td>2 Hours</td>
        </tr>
        <tr>
            <td>V Memani</td>
            <td>10-252</td>
            <td>2022/05/27 15h00</td>
            <td>2 Hours</td>
        </tr>
        <tr>
            <td>V Memani</td>
            <td>10-252</td>
            <td>2022/05/27 15h00</td>
            <td>2 Hours</td>
        </tr>
        <tr>
            <td>V Memani</td>
            <td>10-252</td>
            <td>2022/05/27 15h00</td>
            <td>2 Hours</td>
        </tr>
        </tbody>

    </table>
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
<%

    }
%>
</body>

</html>