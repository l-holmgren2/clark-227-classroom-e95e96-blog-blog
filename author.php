<?php require "inc/header.inc.php"; ?>

<?php
require "inc/db_connect.inc.php"; // connect to the blog database
require "inc/functions.inc.php";

// get author id from query parameter
if (isset($_GET['author'])) {
    $author_id = $_GET['author'];
} else {
    header("Location: authors.php");
}

// get author's name
// SQL to get authors by ID
$sql = "SELECT first_name, last_name
                        FROM author
                        WHERE author_id = :author_id";

// PDO Prepared Statements
$stmt_author = $db->prepare($sql);
$stmt_author->execute(['author_id' => $author_id]);

// Fetch the row
$author_row = $stmt_author->fetch();
echo "<h1 class='mb-5'>Blog Posts - By Author <em>{$author_row->first_name} {$author_row->last_name}</em></h1>";

// get posts by author
// SQL to get all posts by author
$sql = "SELECT post.post_id, post.title
                        FROM post 
                        WHERE post.author = :author_id";

// PDO Prepared Statements
$stmt = $db->prepare($sql);
$stmt->execute(['author_id' => $author_id]);

// Fetch the post rows
$rows = $stmt->fetchAll();

// display all posts by author as unordered list
if (count($rows) > 0) {
    echo "<ul>";
    foreach ($rows as $post_row) {
        // formats post name as link to single post page
        $post = "<a href='post.php?id={$post_row->post_id}'>$post_row->title</a>";
        echo "<li>{$post}</li>";
    }
    echo "</ul>";
} else { // if no posts by author
    echo "<p>No posts found by this author :(</p>";
}

?>
</div> <!-- Closing for .row -->
</div> <!-- Closing for .container -->

<?php require "inc/footer.inc.php" ?>