<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <link rel="stylesheet" href="/styles/main.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <image src="${ad.photo}" style="width: 200px; height: 200px;"></image>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>
<div class="light-dark">
    <button class="dark">Light/Dark</button>
</div>
<script>
    $('.dark').click(function (){
        $('body').toggleClass('dark-mode')
    });
</script>

</body>
</html>
