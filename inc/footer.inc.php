<?php $page = basename($_SERVER['PHP_SELF']); ?>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark-green py-0 mt-5">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link<?= ($page == 'blog.php') ? ' active" aria-current="page' : '' ?>" href="blog.php">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link<?= ($page == 'categories.php') ? ' active" aria-current="page' : '' ?>" href="categories.php">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link<?= ($page == 'tags.php') ? ' active" aria-current="page' : '' ?>" href="tags.php">Tags</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link<?= ($page == 'authors.php') ? ' active" aria-current="page' : '' ?>" href="authors.php">Authors</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
</body>

</html>