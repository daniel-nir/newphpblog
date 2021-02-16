<?php 

session_start();
$page_title = 'Home Page';

?>

<?php include 'tpl/header.php'; ?>
<main class="min-h-900">
  <div class="container">
    <section id="top-content">
      <div class="row">
        <div class="col-12 text-center mt-3">
          <h1 class="display-4">Do you dig me?</h1>
          <p>Forum blog for everybody!</p>
          <p>
            <a href="signup.php" class="btn btn-outline-warning btn-lg">Join Us Now</a>
          </p>
        </div>
      </div>
    </section>
    <section id="main-content">
      <div class="row">
        <div class="col-12 mt-3">
          <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Saepe eligendi fugit praesentium error iste
            accusamus esse possimus provident nostrum doloremque.</p>
          <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Saepe eligendi fugit praesentium error iste
            accusamus esse possimus provident nostrum doloremque.</p>
          <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Saepe eligendi fugit praesentium error iste
            accusamus esse possimus provident nostrum doloremque.</p>
          <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Saepe eligendi fugit praesentium error iste
            accusamus esse possimus provident nostrum doloremque.</p>
        </div>
      </div>
    </section>
  </div>
</main>
<?php include 'tpl/footer.php'; ?>