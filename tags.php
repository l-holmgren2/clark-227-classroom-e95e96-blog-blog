<?php require "inc/header.inc.php"; ?>

<h1 class="mb-5">All Tags</h1>

<?php
require "inc/db_connect.inc.php"; // connect to the blog database

// SQL to get all tags
$sql = "SELECT tag, id
                        FROM tag
                        ORDER BY tag asc";

// PDO Prepared Statements
$stmt = $db->prepare($sql);
$stmt->execute();

// Fetch all of the row(s)
$rows = $stmt->fetchAll();

echo "<ul>";
foreach ($rows as $row) {
    // formats tag name as link to tag page
    $tag = "<a href='tag.php?tag={$row->tag}'>$row->tag</a>";
    echo "<li>{$tag}</li>";
}
echo "</ul>";
?>
</div> <!-- Closing for .row -->
</div> <!-- Closing for .container -->

<?php require "inc/footer.inc.php" ?>