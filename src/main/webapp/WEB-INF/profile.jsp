<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <link rel="stylesheet" href="/styles/main.css">
        <nav class="navbar navbar-dark bg-dark">
        <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header col-9">
            <a class="navbar-brand" href="/search">Home</a>
        </div>
        <ul class="nav navbar-nav navbar-right col-3 d-flex flex-row justify-content-evenly">
            <li><a href="/create">Create a post</a></li>
            <li><a href="/">Dashboard</a></li>
        </ul>
        </div>
        </nav>
</head>
<body>
<br>
<br>
   <div class="container">
       <p>Username:<h3>${sessionScope.user.username}</h3></p>
       <p>Email:<h3>${sessionScope.user.email}</h3></p>
   </div>

</body>
</html>
