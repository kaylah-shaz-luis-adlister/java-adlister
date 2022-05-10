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

    <form action="/search" method="post">
        <div class="input-group">
            <div class="form-outline">
                <input type="search" id="form1" class="form-control" />
                <label class="form-label" for="form1">Search</label>
            </div>
            <button type="submit" class="btn btn-primary">
                <i class="fas fa-search"></i>
            </button>
        </div>
    </form>
    <form action="/search" method="post">
        <ul class="dropdown-menu dropdown-menu-left" aria-labelledby="navbarDropdownMenuLink">
            <li>
                <div class="input-group mt-2 mx-2">
                    <div class="form-outline">
                        <input type="search" id="form1" class="form-control-dropdown" />
                        <label class="form-label" for="form1">Search</label>
                    </div>
                </div>
            </li>
            <li><hr class="dropdown-divider" /></li>
            <li><a class="dropdown-item" href="#">Shoes</a></li>
            <li><a class="dropdown-item" href="#">Shirts</a></li>
            <li><a class="dropdown-item" href="#">Pants</a></li>
            <li><a class="dropdown-item" href="#">Outerwear</a></li>
            <li><a class="dropdown-item" href="#">Accessories</a></li>
            <li><a class="dropdown-item" href="#">Accessories</a></li>
        </ul>
    </form>
</nav>
