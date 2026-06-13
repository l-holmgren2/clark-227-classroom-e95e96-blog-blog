<?php
function displayPost($row, $isPreview)
{
    require "inc/db_connect.inc.php"; // connect to the blog database

    // Create HTML for each blog entry
    echo "<div class='col-12 mb-5'>";

    // Blog Title
    // displays as link if the post is a preview (like on the home blog page), or normal text otherwise (like on the single post page)
    if ($isPreview) {
        echo "<h2><a href='post.php?id={$row->post_id}'>{$row->title}</a></h2>";
    } else {
        echo "<h2>{$row->title}</h2>";
    }
    echo "<hr>";
    // Take the date and convert it to a PHP date object
    $date = date_create($row->date);
    // Show blog post author and format the date
    echo "<p class='fw-bold'>{$row->first_name} {$row->last_name} - " . $date->format('M d, Y')  . "</p>";

    // display post categories
    // get the categories for this post with SQL JOIN
    $sql = "SELECT post_category.post_id, post_category.category_id, category.category 
        FROM post_category 
        JOIN category 
        ON post_category.category_id = category.category_id 
        WHERE post_category.post_id = :post_id";

    // PDO Prepared statements
    $stmt_category = $db->prepare($sql);
    $stmt_category->execute(["post_id" => $row->post_id]);
    $category_rows = $stmt_category->fetchAll();

    // generate category list
    $categories = [];
    foreach ($category_rows as $category_row) {
        // format category as link to category page
        $categoryLink = "<a href='category.php?category={$category_row->category}'>$category_row->category</a>";
        array_push($categories, $categoryLink);
    }

    if (count($categories) > 1) {
        echo "<p>Categories</p>";
    } else {
        echo "<p>Category</p>";
    }
    $categories_str = implode(", ", $categories);
    echo "<p>{$categories_str}</p>";

    // display post tags
    // get the tags for this post with SQL JOIN
    $sql = "SELECT tag.id, tag.tag 
        FROM post_tag 
        JOIN tag 
        ON post_tag.tag_id = tag.id 
        WHERE post_tag.post_id = :post_id";

    // PDO Prepared statements
    $stmt_tag = $db->prepare($sql);
    $stmt_tag->execute(["post_id" => $row->post_id]);
    $tag_rows = $stmt_tag->fetchAll();

    // generate tag list
    $tags = [];
    foreach ($tag_rows as $tag_row) {
        // format tag as link to tag page
        $tagLink = "<a href='tag.php?tag={$tag_row->tag}'>$tag_row->tag</a>";
        array_push($tags, $tagLink);
    }

    if (count($tags) > 1) {
        echo "<p>Tags</p>";
    } else {
        echo "<p>Tag</p>";
    }
    $tags_str = implode(", ", $tags);
    echo "<p>{$tags_str}</p>";

    // Show the blog post content
    // if the content is part of a post preview (ie on the home blog page rather than the single post page):
    // truncate content
    if ($isPreview) {
        echo "<p>" . limit_text($row->content, 30) . "</p>";
        // display a Read More link
        echo "<a href='post.php?id={$row->post_id}' title='Read the post'>Read more ></a>";
    } else {
        echo "<p>{$row->content}</p>";
    }

    echo "</div>"; // closing .col-1
}

// returns a string truncated to the number of words designated by limit, plus ... 
// https://stackoverflow.com/questions/965235/how-can-i-truncate-a-string-to-the-first-20-words-in-php
function limit_text($text, $limit)
{
    if (str_word_count($text, 0) > $limit) {
        $words = str_word_count($text, 2);
        $pos   = array_keys($words);
        $text  = substr($text, 0, $pos[$limit]) . '...';
    }
    return $text;
}
