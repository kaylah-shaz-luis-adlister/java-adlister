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
                <textarea id="category" name="category" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <h3>File Upload:</h3>
                Select a file to upload: <br />
                <form action = "FileUploadServlet" method = "post"
                      enctype = "multipart/form-data">
                    <input type = "file" name = "file" size = "50" />
                    <br />
                    <input type = "submit" value = "Upload File" />
                </form>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
            <a href="/">Redirect to Dashboard</a>
        </form>

        <----HTML5 Input Form Elements---->
        <input id="ajaxFile" type="file"/> <br/>
        <button onclick="uploadFile()">Upload</button>

        <script>
            async function uploadFile() {
                let formData = new FormData();
                formData.append("file", ajaxfile.files(0));
                await fetch('fileuploadservlet', {
                    method: "POST",
                    body: formData
                });
                alert("The file upload was a success");
            }
        </script>
    </div>
</body>
</html>
