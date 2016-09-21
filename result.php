<?php
    $page='';
    if(isset($_GET['page'])) {
        $page=$_GET['page'];
    } else {
        $page='first';
    }
    include('connect_database.inc.php');
?>
    <div class="container">

      <div class="blog-header">
        <h1 class="blog-title">研發成果智慧財產權</h1>
        <p class="lead blog-description">Intellectual Property Rights</p>
      </div>
          <div class="blog-post">
          <table class="table table-striped">
          <thead>
            <th>類別</th>
            <th>專利名稱</th>
            <th>國別</th>
            <th>專利號碼</th>
            <th>發明人</th>
            <th>專利權人</th>
            <th>專利核准日期</th>
          </thead>
          <tbody>
                    <?php
                      $result=$conn->query("SELECT type,name,country,number,member,owner,date FROM intellectual_property_rights");
                      while($row=$result->fetch_assoc()){
                        echo '<tr><td>'.$row['type'].'</td>';
                        echo '<td>'.$row['name'].'</td>';
                        echo '<td>'.$row['country'].'</td>';
                        echo '<td>'.$row['number'].'</td>';
                        echo '<td>'.$row['member'].'</td>';
                        echo '<td>'.$row['owner'].'</td>';
                        echo '<td>'.$row['date'].'</td></tr>';
                      }
                      ?>
            </tbody>
            </table>
        </div>
    <footer class="blog-footer">
      <p>中山醫學大學醫學資訊學系智慧醫療暨大數據分析實驗室</p>
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer>