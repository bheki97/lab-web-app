<%@ page import="za.ac.tut.u221091140.laboratorywebapp.entities.lab.Lab" %>
<%@ page import="java.util.List" %>
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
    <link href="https://unpkg.com/bootstrap-table@1.20.2/dist/bootstrap-table.min.css" rel="stylesheet">
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

    <div class="d-lg-block align-content-center">
        <h2 class="text-center">Available Labs</h2>

        <table
                id="table"
                data-toggle="table"
                data-height="460"
                data-search="true"
                data-side-pagination="server"
                data-pagination="true">
            <thead>
            <tr>
                <th data-field="id">ID</th>
                <th data-field="name">Item Name</th>
                <th data-field="price">Item Price</th>
            </tr>
            </thead>

            <tbody>
                <c:forEach var="lab" items="${labs}">
                    <tr>
                        <td><c:out value="${lab.labNo}"/></td>
                        <td><c:out value="${lab.buildingNo}"/></td>
                        <td><c:out value="${lab.campus}"/></td>
                        <td>
                            <c:choose>
                                <c:when test="${lab.isOpen}">
                                    Opened
                                </c:when>
                                <c:otherwise>
                                    Closed
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

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
<!--Javascript-->
<script src="../js/bootstrap.bundle.min.js" ></script>
<script src="https://unpkg.com/bootstrap-table@1.20.2/dist/bootstrap-table.min.js"></script>



</body>
</html>