<nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header col-9">
            <a class="navbar-brand" href="/search">Home</a>
        </div>
        <ul class="nav navbar-nav navbar-right col-3 d-flex flex-row justify-content-evenly">
            <li><a href="/register">Create Account</a></li>
            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a></li>
            <li></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->

    <br/>
    <%--    Search box--%>

    <form action="/search" method="get">
        <div class="input-group <%--col-6 d-flex justify-content-evenly flex-wrap-nowrap--%>">
            <div class="form-outline col-6 d-flex justify-content-evenly align-items-center pt-1">
                <label class="form-label" for="form1">Search</label>
                <input type="search" id="form1" class="form-control" name="search"/>
                <input id="submit" type="submit" class="btn btn-primary w-25">
            </div>
        </div>
    </form>

    <%--    Category drop-down--%>

    <form class="form col-6 d-flex justify-content-evenly align-items-center pt-1" action="/search" method="get">
        <label class="form-label" for="category">Category</label>
        <select id="category" name="category" style="height: 40px;width: 165px">
            <option value="" disabled selected>Select your option</option>
            <option value="1">Shoes</option>
            <option value="2">Shirt</option>
            <option value="3">Pants</option>
            <option value="4">Outerwear</option>
            <option value="5">Accessories</option>
            <option value="6">Hats</option>
        </select>
        <br>
        <input id="submit1" type="submit" class="btn btn-primary w-25">
    </form>
</nav>