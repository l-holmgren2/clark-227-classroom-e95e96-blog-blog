<?php require "inc/header.inc.php"; ?>

<h1 class="mb-5">All Authors</h1>

<?php
require "inc/db_connect.inc.php"; // connect to the blog database

// SQL to get all authors
$sql = "SELECT first_name, last_name, author_id
                        FROM author
                        ORDER BY last_name asc";

// PDO Prepared Statements
$stmt = $db->prepare($sql);
$stmt->execute();

// Fetch all of the row(s)
$rows = $stmt->fetchAll();

echo "<ul>";
foreach ($rows as $row) {
    // formats author name as link to author page
    $author = "<a href='author.php?author={$row->author_id}'>$row->first_name $row->last_name</a>";
    echo "<li>{$author}</li>";
}
echo "</ul>";
?>
</div> <!-- Closing for .row -->
</div> <!-- Closing for .container -->

<?php require "inc/footer.inc.php" ?>