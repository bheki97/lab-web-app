
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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
        }

        .myBrand {
            color: #ffffff !important;
            font-family: 'Secular One';
            font-size: 2em;
        }

        .table-container {
            flex-grow: 10;
        }

        .myLink {
            color: #E4B312 !important;
            font-weight: bold;
            margin-left: 30px;
            margin-right: 30px;
            text-align: center;
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

        tbody>tr>td {
            padding: 10px;
            font-weight: bold;
            text-align: center;
        }

        thead {
            background-color: #CE1127 !important;
        }

        thead th:first-child {
            border-radius: 10px 0 0 10px;
        }

        thead th:last-child {
            border-radius: 0 10px 10px 0;
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
                    <a class="nav-link active myLink" aria-current="page" href="#">Home</a>
                    <a class="nav-link active myLink" href="#">Schedule</a>
                    <a class="nav-link active myLink" href="#">Contacts</a>
                    <a class="nav-link active myLink login rounded-pill" href="home/signup" tabindex="-1" aria-disabled="true">Sign Up</a>
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