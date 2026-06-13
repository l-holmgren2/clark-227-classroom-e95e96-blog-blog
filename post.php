<?php require "inc/header.inc.php"; ?>

<h1 class="mb-5">CTEC 227 Blog</h1>

<?php
require "inc/db_connect.inc.php"; // connect to the blog database
require "inc/functions.inc.php";

// get post id from query parameter
if (isset($_GET['id'])) {
    $post_id = $_GET['id'];
} else { // redirects to home blog page if no valid query parameter set
    header("Location: blog.php");
}

// SQL to get a single blog post by id
$sql = "SELECT post.post_id, post.title, post.date, post.content, author.author_id, author.first_name, author.last_name 
                        FROM post 
                        JOIN author 
                        ON post.author = author.author_id
                        WHERE post.post_id = :post_id";

// PDO Prepared Statements
$stmt = $db->prepare($sql);
$stmt->execute(['post_id' => $post_id]);

// Fetch the row
$row = $stmt->fetch();

if ($row) {
    displayPost($row, false);
} else { // redirect to home blog page if no post with given ID
    header("Location: blog.php");
}

?>
</div> <!-- Closing for .row -->
</div> <!-- Closing for .container -->

<?php require "inc/footer.inc.php" ?>