<!DOCTYPE html>
<html>
<head>
  <title>pagination</title>
</head>
<body>
<center>
<h1>Pagination</h1>
<hr>
  <?php
require_once("connection.php");


if (isset($_GET['page'])) {
    $current_post = $_GET['page'];
} else {
    $current_post = 1;
}


$posts_per_page = 4;

$starting_point = ($current_post - 1) * $posts_per_page;

$sql = "SELECT post_id, title, summary, description, Author FROM posts LIMIT $starting_point, $posts_per_page";

$result = mysqli_query($connection, $sql);
$total_pages = ceil(20 / $posts_per_page);


echo "<div>";
if ($current_post > 1) {
  echo "<a href='?page=".($current_post - 1)."'>Previous</a>";
}
for ($i = 1; $i <= $total_pages; $i++) {
  if ($i == $current_post) {
    echo "<span>$i</span>";
  } else {
    echo "<a href='?page=$i'>$i</a>";
  }
}
if ($current_post < $total_pages) {
  echo "<a href='?page=".($current_post + 1)."'>Next</a>";
}
echo "</div>";
if (mysqli_num_rows($result) > 0) {

  

echo "<table style='border-radius: 8px; width: 100%;'>";
echo "<tr><th style='padding: 10px; margin:10px; border: 1px solid blue; background-color: blue;'>POST ID</th><th style='padding: 10px; border: 1px solid blue;background-color: blue;'>Title</th><th style='padding: 10px; border: 1px solid blue; background-color: blue;'>Summary</th><th style='padding: 10px; border: 1px solid blue; background-color: blue;'>Description</th>
<th style='padding: 10px; border: 1px solid blue; background-color: blue;'>Author</th>
</tr>";
  while($row = mysqli_fetch_assoc($result)) {
 
     echo "<tr>";
    echo "<td style='padding: 10px; border: 1px solid gray;'>" . $row['post_id'] . "</td>";
    echo "<td style='padding: 10px; border: 1px solid gray;'>" . $row['title'] . "</td>";
    echo "<td style='padding: 10px; border: 1px solid gray;'>" . $row['summary'] . "</td>";
    echo "<td style='padding: 10px; border: 1px solid gray;'>" . $row['description'] . "</td>";
    echo "<td style='padding: 10px; border: 1px solid gray;'>" . $row['Author'] . "</td>";
    echo "</tr>";
   
  }
  echo "</table>";


} else {
  echo "No posts found.";
}




?>


</center>
</body>
</html>
