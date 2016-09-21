
    <div class="container">

      <div class="blog-header">
        <h1 class="blog-title">大專生專題成果</h1>
        <p class="lead blog-description">The Project Of University Graduating Students</p>
      </div>
          <div class="blog-post">
            <table class="table table-striped">
            <thead>
              <th>年分</th>
              <th>專題名稱</th>
              <th>成員</th>
            </thead>
            <tbody>
              <?php
                $result=$conn->query("SELECT year,name,member FROM university_study");
                while($row=$result->fetch_assoc()){
                  echo '<tr><td>'.$row['year'].'</td>';
				  echo '<td>'.$row['name'].'</td>';
				  echo '<td>'.$row['member'].'</td></tr>';
                }
              ?>
            </tr>
            </tbody>
          </table>
        </div>
    <footer class="blog-footer">
      <p>中山醫學大學醫學資訊學系智慧醫療暨大數據分析實驗室</p>
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer>
