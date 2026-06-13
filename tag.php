<?php require "inc/header.inc.php"; ?>

<?php
require "inc/db_connect.inc.php"; // connect to the blog database
require "inc/functions.inc.php";

// get tag from query parameter
if (isset($_GET['tag'])) {
    $tag = $_GET['tag'];
} else { // redirects to categories page if no valid query parameter set
    header("Location: tags.php");
}

echo "<h1 class='mb-5'>Blog Posts - Tagged \"<em>{$tag}</em>\"</h1>";

// SQL to get all posts by tag
$sql = "SELECT post.post_id, post.title
                        FROM post 
                        JOIN post_tag 
                        ON post.post_id = post_tag.post_id 
                        JOIN tag 
                        ON tag.id = post_tag.tag_id 
                        WHERE tag.tag = :tag";

// PDO Prepared Statements
$stmt = $db->prepare($sql);
$stmt->execute(['tag' => $tag]);

// Fetch the post rows
$rows = $stmt->fetchAll();

// display all posts with tag as unordered list
if (count($rows) > 0) {
    echo "<ul>";
    foreach ($rows as $post_row) {
        // formats post name as link to single post page
        $post = "<a href='post.php?id={$post_row->post_id}'>$post_row->title</a>";
        echo "<li>{$post}</li>";
    }
    echo "</ul>";
} else { // if no posts with tag
    echo "<p>No posts found with this tag :(</p>";
}

?>
</div> <!-- Closing for .row -->
</div> <!-- Closing for .container -->

<?php require "inc/footer.inc.php" ?>