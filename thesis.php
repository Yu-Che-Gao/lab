   <div class="container">

      <div class="blog-header">
        <h1 class="blog-title">研究生論文</h1>
        <p class="lead blog-description">Thesis</p>
      </div>
          <div class="blog-post">
            <table class="table table-striped">
              <thead>
                <th>日期</th>
                <th>年級</th>
                <th>學號</th>
                <th>姓名</th>
                <th>論文名稱</th>
                <th>論文英文名稱</th>
              </thead>
              <tbody>
              <?php
                $result=$conn->query("SELECT date,department,number,student,name_chi,name_eng FROM thesis");
                while($row=$result->fetch_assoc()){
                  echo '<tr><td>'.$row['date'].'</td>';
                  echo '<td>'.$row['department'].'</td>';
                  echo '<td>'.$row['number'].'</td>';
                  echo '<td>'.$row['student'].'</td>';
                  echo '<td>'.$row['name_chi'].'</td>';
                  echo '<td>'.$row['name_eng'].'</td></tr>';
                }
              ?>
              </tbody>
          </table>
        </div>
    </div>
    <footer class="blog-footer">
      <p>中山醫學大學醫學資訊學系智慧醫療暨大數據分析實驗室</p>
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer>