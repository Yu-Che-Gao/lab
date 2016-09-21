    <div class="container">

      <div class="blog-header">
        <h1 class="blog-title">成員榮譽事項</h1>
        <p class="lead blog-description">Honor Deeds</p>
      </div>

      <div class="row">

        <div class="col-sm-12 blog-main">

          <div class="blog-post">
		<p>
					  <ol>
              <?php
                $result=$conn->query("SELECT content FROM honor_deeds ORDER BY id");
                while($row=$result->fetch_assoc()){
                  echo '<li>'.$row['content'].'</li><br/>';

                }
              ?>
            </ol>
		</p>
          
        </div><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </div><!-- /.container -->

    <footer class="blog-footer">
      <p>中山醫學大學醫學資訊學系智慧醫療暨大數據分析實驗室</p>
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer>