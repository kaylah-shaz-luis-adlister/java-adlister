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

<div class="ad-container d-flex justify-content-around p-2">
    <h1>Welcome to the Closet Exchange!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="ad col-md-6 d-flex flex-column align-items-center">
            <h2>${ad.title}</h2>
            <image class="img" src="${ad.photo}" style="width: 400px; height: 400px;"></image>
            <p>${ad.description}</p>
        </div>
    </c:forEach>

    <c:forEach var="ad" items="${category}">
        <div class="ad col-md-6 d-flex flex-column align-items-center">
            <h2>${ad.title}</h2>
            <image class="img" src="${ad.photo}" style="width: 400px; height: 400px;"></image>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>
<!--button to toggle light and dark mode-->
<div class="light-dark">
    <button class="dark">Light/Dark</button>
</div>
<script>
    $('.dark').click(function (){
        $('body').toggleClass('dark-mode')
    });
    $('.ad').hover(function() {
        $(this).css('box-shadow',"10px 5px 5px ");
    }, function() {
        $(this).css('box-shadow', '0px 0px 0px ');
    });
</script>

</body>
</html>
