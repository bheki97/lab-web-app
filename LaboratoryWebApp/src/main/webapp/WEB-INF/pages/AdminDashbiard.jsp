<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link href="<c:url value="../css/home.css" />" rel="stylesheet" >
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
                        <a class="nav-link active myLink" aria-current="page" href="/home/">add User</a>
                        <a class="nav-link active myLink" href="/admin/addlab">Add Labs</a>
                        <a class="nav-link active myLink" href="/admin/seelabsavailable">See Labs available</a>
                        <a class="nav-link active myLink" href="/admin/setsecsched">Set security schedule</a>
                        <a class="nav-link active myLink" href="/admin/viewAllrequests">View all requests </a>
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