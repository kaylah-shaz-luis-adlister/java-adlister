<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <link rel="stylesheet" href="/styles/main.css">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1 class="align-self-center">Please Log In</h1>
        <form action="/login" method="POST" id="login-form" class="align-items-center">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <button type="submit" id="login" class="btn btn-primary btn-large mx-auto pt-2 align-self-center">Log In</button>
<%--            <a href="/register">--%>
<%--                <button id="sign-up" class="btn btn-primary col-md-6 mx-1">Sign Up</button>--%>
<%--            </a>--%>
        </form>
        <div class="light-dark">
            <button class="dark">Light/Dark</button>
        </div>
    </div>
    <script>
        $('.dark').click(function (){
            $('body').toggleClass('dark-mode')
        });
    </script>
</body>
</html>
