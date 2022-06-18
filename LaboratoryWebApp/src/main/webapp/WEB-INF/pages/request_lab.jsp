<%@ page import="za.ac.tut.u221091140.laboratorywebapp.entities.lab.Lab" %>
<%@ page import="java.util.List" %>
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
                    <a class="nav-link active myLink" aria-current="page" href="/home">Sign in/out</a>
                    <a class="nav-link active myLink" href="/studentadmin/requestlab">Request Lab</a>
                    <a class="nav-link active myLink" href="#">Available Lab</a>
                    <a class="nav-link active myLink login rounded-pill" href="#" tabindex="-1" aria-disabled="true">Log out</a>
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
                            <h2 class="text-uppercase text-center mb-4">Requesting A Lab</h2>

                            <form action="/studentadmin/requestlab" method="post" name="">
                                <div class="names form-outline mb-2 ">
                                    <div><input type="time" id="start" min="08:00:00" max="19:30:00" name="start" class="form-control form-control-lg" />
                                        <label class="form-label" for="start">Opening Time</label>
                                    </div>
                                    <div class="ms-3"><input type="time" min="08:30:00" max="20:00:00" id="end" name="end" class="form-control form-control-lg" />
                                        <label class="form-label" for="end">Closing Time</label>
                                    </div>
                                </div>
                                <div class=" form-outline mb-2 ">
                                    <label class="form-label" for="selectlab">Select Lab</label>
                                    <select name="labno" id="selectlab" class="form-select form-select-lg mb-3">
                                        <option>choose</option>
                                        <c:forEach var="lab" items="${labs}">
                                            <option value="<c:out value="${lab.labNo}"/>">
                                                <c:out value="${lab.labNo}"/> : <c:out value="${lab.campus}"/>
                                            </option>
                                        </c:forEach>
                                    </select>

                                </div>
                                <div>
                                    <button type="submit"  class="btn btn-success m-2 btn-block btn-lg gradient-custom-4 text-body">Request</button>
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

<script>
    function validateTime(startTimeId){
        // var myForm = document.getElementById(formId);
        var myStart = document.getElementById(startTimeId);
        // var myEnd = document.getElementById(endTimeId);

        alert(myStart.value);
    }


</script>
</body>

</html>