    <div class="container">

      <div class="blog-header">
        <h1 class="blog-title">研討會論文</h1>
        <p class="lead blog-description">Conference Papers</p>
      </div>

      <div class="row">

        <div class="col-sm-12 blog-main">

          <div class="blog-post">
           <ol>
              <?php
                $result=$conn->query("SELECT content FROM conference_paper");
                while($row=$result->fetch_assoc()){
                  echo '<li>'.$row['content'].'</li><br/>';
                }
              ?>
            </ol>
        
        </div><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </div><!-- /.container -->

    <footer class="blog-footer">
      <p> <p>中山醫學大學醫學資訊學系智慧醫療暨大數據分析實驗室</p></p>
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer>