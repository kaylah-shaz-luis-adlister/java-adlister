<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Home</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a></li>
            <li></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
           <br/>
    <form action="/search" method="get">
        <div class="input-group">
            <div class="form-outline">
                <label class="form-label" for="form1">Search</label>
                <input type="search" id="form1" class="form-control"/>
            </div>
            <br/><br/>
            <button type="submit" class="btn btn-primary" style="width: 100px; height: 25px">
                <i class="fas fa-search">Submit</i>
            </button>
        </div>
    </form>
<%--    <form action="/search" method="get">--%>
<%--    <div class="form-group">--%>
<%--        <label for="category">Category</label>--%>
<%--        <select id="category" name="category" style="height: 50px;width: 165px">--%>
<%--            <option>Select</option>--%>
<%--            <option><a href="/search">Shoes</a></option>--%>
<%--            <option value="2">Shirt</option>--%>
<%--            <option value="3">Pants</option>--%>
<%--            <option value="4">Outerwear</option>--%>
<%--            <option value="5">Accessories</option>--%>
<%--            <option value="6">Hats</option>--%>
<%--        </select>--%>
<%--        <br/><br/>--%>
<%--    </div>--%>
<%--    </form>--%>
    <form class="form" action="/search" method="get">
        <h5>Category</h5>
        <select id="category" name="category" style="height: 50px;width: 165px">
            <option value="" disabled selected>Select your option</option>
            <option value="1">Shoes</option>
            <option value="2">Shirt</option>
            <option value="3">Pants</option>
            <option value="4">Outerwear</option>
            <option value="5">Accessories</option>
            <option value="6">Hats</option>
        </select>
<%--        <input id="dropdown box" type="text" class="w-75" placeholder="search...">--%>
        <br>
        <br>
        <input id="submit" type="submit" class="w-75">
    </form>
</nav>
