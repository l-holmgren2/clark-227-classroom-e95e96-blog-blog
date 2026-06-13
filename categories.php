<?php require "inc/header.inc.php"; ?>

<h1 class="mb-5">All Categories</h1>

<?php
require "inc/db_connect.inc.php"; // connect to the blog database

// SQL to get all categories
$sql = "SELECT category, category_id
                        FROM category
                        ORDER BY category asc";

// PDO Prepared Statements
$stmt = $db->prepare($sql);
$stmt->execute();

// Fetch all of the row(s)
$rows = $stmt->fetchAll();

echo "<ul>";
foreach ($rows as $row) {
    // formats category name as link to category page
    $category = "<a href='category.php?category={$row->category}'>$row->category</a>";
    echo "<li>{$category}</li>";
}
echo "</ul>";
?>
</div> <!-- Closing for .row -->
</div> <!-- Closing for .container -->

<?php require "inc/footer.inc.php" ?>