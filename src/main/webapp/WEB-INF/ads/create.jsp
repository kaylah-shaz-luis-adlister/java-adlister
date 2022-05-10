<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="category">Category</label>
                <select id="category" name="category">
                    <option>Select</option>
                    <option value="1">Shoes</option>
                    <option value="2">Shirt</option>
                    <option value="3">Pants</option>
                    <option value="4">Outerwear</option>
                    <option value="5">Accessories</option>
                    <option value="6">Hats</option>
                </select>
                <br/><br/>
            </div>
            <div>
            <label for="photo">Photo</label>
            <textarea id="photo" name="photo" class="form-control" type="text"></textarea>
            </div>
            <br/>
            <input type="submit" class="btn btn-block btn-primary">
            <br/>
            <a href="/">Redirect to Dashboard</a>
        </form>
    </div>
</body>
</html>
