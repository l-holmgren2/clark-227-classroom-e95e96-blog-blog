<?php require "inc/header.inc.php"; ?>

<h1 class="mb-5">CTEC 227 Blog</h1>

<?php
require "inc/db_connect.inc.php"; // connect to the blog database
require "inc/functions.inc.php";

// SQL to get all blog posts. Note the use of a JOIN
$sql = "SELECT post.post_id, post.title, post.date, post.content, author.author_id, author.first_name, author.last_name 
                        FROM post 
                        JOIN author 
                        ON post.author = author.author_id ";

// PDO Prepared Statements
$stmt = $db->prepare($sql);
$stmt->execute();

// Fetch all of the row(s)
$data = $stmt->fetchAll();

// Iterate through each of the rows
foreach ($data as $row) {
    displayPost($row, true);
} // end of loop for Posts
?>
</div> <!-- Closing for .row -->
</div> <!-- Closing for .container -->

<?php require "inc/footer.inc.php" ?>