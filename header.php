<?php $href='index.php?page=' 
?>

<div class="bd-example">
  <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
	  <form action="sign_do.php" method ="POST">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title" id="exampleModalLabel">登入</h4>
        </div>
        <div class="modal-body">
          
            <div class="form-group">
              <label class="form-control-label">帳號:</label>
              <input type="text" class="form-control" id="username" name="username">
            </div>
            <div class="form-group">
              <label class="form-control-label">密碼:</label>
              <input type="password">
            </div>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
          <button type="submit" class="btn btn-primary">登入</button>
        </div>
		</form>
      </div>
    </div>
  </div>
</div>

<div class="blog-masthead">
      <div class="container">
        <nav class="blog-nav">
          <a class="blog-nav-item <?php if($page=='first') echo 'active'; ?>" href="<?php echo $href.'first'; ?>">首頁</a>
          <a class="blog-nav-item <?php if($page=='periodical_article') echo 'active'; ?>" href="<?php echo $href.'periodical_article'; ?>">期刊論文</a>
          <a class="blog-nav-item <?php if($page=='conference_papers') echo 'active'; ?>" href="<?php echo $href.'conference_papers'; ?>">研討會論文</a>
          <a class="blog-nav-item <?php if($page=='result') echo 'active'; ?>" href="<?php echo $href.'result'; ?>">研發成果智慧財產權</a>
          <a class="blog-nav-item <?php if($page=='university_study') echo 'active'; ?>" href="<?php echo $href.'university_study'; ?>">大專生專題成果</a>
          <a class="blog-nav-item <?php if($page=='thesis') echo 'active'; ?>" href="<?php echo $href.'thesis'; ?>">研究生論文</a>
          <a class="blog-nav-item <?php if($page=='honor_deeds') echo 'active'; ?>" href="<?php echo $href.'honor_deeds'; ?>">成員榮譽事項</a>
          <?php
		  
		  session_start();
			if(isset($_SESSION['user'])){
				echo '<a class="blog-nav-item navbar-right" href="logout.php">登出</a><a href="#" class="blog-nav-item navbar-right" >Welcome '.$_SESSION['user'].'</a>';
			}
			else{
				echo '<a class="blog-nav-item navbar-right" data-toggle="modal" data-target="#login">登入</a>';			
			}
		  ?>		  
        </nav>
      </div>
		      
</div>

