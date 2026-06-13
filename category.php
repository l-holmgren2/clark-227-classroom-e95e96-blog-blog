<?php require "inc/header.inc.php"; ?>

<?php
require "inc/db_connect.inc.php"; // connect to the blog database
require "inc/functions.inc.php";

// get category from query parameter
if (isset($_GET['category'])) {
    $category = $_GET['category'];
} else { // redirects to categories page if no valid query parameter set
    header("Location: categories.php");
}

echo "<h1 class='mb-5'>Blog Posts - Categorized \"<em>{$category}</em>\"</h1>";

// SQL to get all posts by category
$sql = "SELECT post.post_id, post.title
                        FROM post 
                        JOIN post_category 
                        ON post.post_id = post_category.post_id 
                        JOIN category 
                        ON category.category_id = post_category.category_id 
                        WHERE category.category = :category";

// PDO Prepared Statements
$stmt = $db->prepare($sql);
$stmt->execute(['category' => $category]);

// Fetch the post rows
$rows = $stmt->fetchAll();

// display all posts in category as unordered list
if (count($rows) > 0) {
    echo "<ul>";
    foreach ($rows as $post_row) {
        // formats post name as link to single post page
        $post = "<a href='post.php?id={$post_row->post_id}'>$post_row->title</a>";
        echo "<li>{$post}</li>";
    }
    echo "</ul>";
} else { //if no posts in category
    echo "<p>No posts found in this category :(</p>";
}

?>
</div> <!-- Closing for .row -->
</div> <!-- Closing for .container -->

<?php require "inc/footer.inc.php" ?>