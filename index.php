<?php
    $page='';
    if(isset($_GET['page'])) {
        $page=$_GET['page'];
    } else {
        $page='first';
    }
    include('connect_database.inc.php');
?>
<html>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>智慧醫療暨大數據分析實驗室</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="css/blog.css" rel="stylesheet">
    <style>
        h1, h2, h3, h4, label, button, body {
            font-family: "Times New Roman", "微軟正黑體"; /*中文字型: 微軟正黑體  英文字型: Times New Roman */
        }
    </style>
  </head>
  <body>
    <?php include('header.php'); //header ?>
    <?php include($page.'.php'); //content ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
  
</html>