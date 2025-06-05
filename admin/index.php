<?php
  require('inc/essentials.php');
  require('inc/db_config.php');

  session_start();
  if((isset($_SESSION['adminLogin']) && $_SESSION['adminLogin']==true)){
    redirect('dashboard.php');
  }
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link  rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Andika:ital,wght@0,400;0,700;1,400;1,700&family=Comme:wght@100..900&family=Cousine:ital,wght@0,400;0,700;1,400;1,700&family=Fredoka:wght@300..700&family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Kumbh+Sans:wght@100..900&family=Mohave:ital,wght@0,300..700;1,300..700&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Quicksand:wght@300..700&family=Rubik:wght@300..900&family=Shippori+Antique+B1&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="admin/css/common.css">

  <title>Admin Login Panel</title>
  
  <?php require('inc/links.php'); ?>
  <style>
    div.login-form{
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%,-50%);
      width: 400px;
    }
  </style>
</head>
<body class="bg-color">
  
  <div class="login-form text-center rounded bg-card shadow overflow-hidden">
    <form method="POST">
      <h4 class="bg-dark text-white py-3">ADMIN LOGIN PANEL</h4>
      <div class="p-4">
        <div class="mb-3">
          <input name="admin_name" required type="text" class="form-control shadow-none text-center" placeholder="Admin Name">
        </div>
        <div class="mb-4">
          <input name="admin_pass" required type="password" class="form-control shadow-none text-center" placeholder="Password">
        </div>
        <button name="login" type="submit" class="btn text-white custom-bg shadow-none">LOGIN</button>
      </div>
    </form>
  </div>


  <?php 
    
    if(isset($_POST['login']))
    {
      $frm_data = filteration($_POST);

      $query = "SELECT * FROM  `admin_cred` WHERE `admin_name`=? AND `admin_pass`=?";
      $values = [$frm_data['admin_name'],$frm_data['admin_pass']];

      $res = select($query,$values,"ss");
      if($res->num_rows==1){
        $row = mysqli_fetch_assoc($res);
        $_SESSION['adminLogin'] = true;
        $_SESSION['adminId'] = $row['sr_no'];
        redirect('dashboard.php');
      }
      else{
        alert('error','Login failed - Invalid Credentials!');
      }
    }
  
  ?>


  <?php require('inc/scripts.php') ?>
</body>
</html>