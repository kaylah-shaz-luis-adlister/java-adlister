<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
        <nav class="navbar navbar-default">
                <div class="navbar-header">
                <ul class="nav navbar-nav navbar-right">
                    <a class="navbar-brand" href="/search">Home</a>
                </ul>
                </div>
            <div class="container">
                <ul>
                <li><a href="/create">Create a post</a></li>
                    <li><a href="/">Dashboard</a></li>
                </ul>
                <!-- Brand and toggle get grouped for better mobile display -->
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
