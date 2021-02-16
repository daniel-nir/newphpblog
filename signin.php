<?php 

session_start();

if( isset($_SESSION['user_id']) ){
  header('location: blog.php');
}

require_once 'app/helpers.php';

$page_title = 'Signin Page';
$error = ['email' => '', 'password' => '', 'submit' => '',];

// אם הגולש לחץ על הכפתור
if( isset($_POST['submit']) ){

  // איסוף נתונים מהטופס למשתנים רגילים
  $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
  $email = trim($email);
  $password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_STRING);
  $password = trim($password);
  $form_valid = true;

  // בדיקה האם הגולש הזין טקסט בשדה האימייל
  if( ! $email ){
    $error['email'] = 'A valid email is required';
    $form_valid = false;
  }

  // בדיקה האם הגולש הזין טקסט בשדה הסיסמה
  if( ! $password ){
    $error['password'] = 'Password is required';
    $form_valid = false;
  }

  // במידה והזין אימייל וסיסמה נתחבר לבסיס הנתונים כדיי לבדוק האם הם נכונים
  if( $form_valid ){

    $link = mysqli_connect(MYSQL_HOST, MYSQL_USER, MYSQL_PWD, MYSQL_DB);
    $email = mysqli_real_escape_string($link, $email);
    $password = mysqli_real_escape_string($link, $password);
    $sql = "SELECT * FROM users WHERE email = '$email' LIMIT 1";
    $result = mysqli_query($link, $sql);
    
    if( $result && mysqli_num_rows($result) == 1){

      $user = mysqli_fetch_assoc($result);

      if( password_verify($password, $user['password']) ){

        $_SESSION['user_id'] = $user['id'];
        $_SESSION['user_name'] = $user['name'];
        header('location: blog.php');

      } else {

        $error['submit'] = ' * Invalid email or password';

      }


    } else {

      $error['submit'] = ' * Invalid email or password';

    }


  }

}


?>

<?php include 'tpl/header.php'; ?>
<main class="min-h-900">
  <div class="container">
    <section id="top-content">
      <div class="row">
        <div class="col-12 mt-3">
          <h1 class="display-4">Here you can signin with your account</h1>
          <p>
            <a href="signup.php">Open new account</a>
          </p>
        </div>
      </div>
    </section>
    <section id="signin-form">
      <div class="row">
        <div class="col-lg-6 mt-3">
          <form action="" method="POST" autocomplete="off" novalidate="novalidate">
            <div class="form-group">
              <label for="email">* Email:</label>
              <input value="<?= old('email'); ?>" type="email" name="email" id="email" class="form-control">
              <span class="text-danger"><?= $error['email']; ?></span>
            </div>
            <div class="form-group">
              <label for="password">* Password:</label>
              <input type="password" name="password" id="password" class="form-control">
              <span class="text-danger"><?= $error['password']; ?></span>
            </div>
            <button type="submit" name="submit" class="btn btn-primary">Signin</button>
            <span class="text-danger"><?= $error['submit']; ?></span>
          </form>
        </div>
      </div>
    </section>
  </div>
</main>
<?php include 'tpl/footer.php'; ?>