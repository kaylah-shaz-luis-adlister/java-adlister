<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">

    <c:forEach var="ad" items="${ads}">
        <div class="ad col-md-6 d-flex flex-column align-items-center">
            <h2>${ad.title}</h2>
            <image class="img" src="${ad.photo}" style="width: 400px; height: 400px;"></image>
            <p>${ad.description}</p>
        </div>
    </c:forEach>

</div>