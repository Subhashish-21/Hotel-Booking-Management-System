<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <?php require('inc/links.php'); ?>
  <title><?php echo $settings_r['site_title'] ?> - CONTACT</title>
  <link rel="stylesheet" href="css/common.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Andika:ital,wght@0,400;0,700;1,400;1,700&family=Comme:wght@100..900&family=Cousine:ital,wght@0,400;0,700;1,400;1,700&family=Fredoka:wght@300..700&family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Kumbh+Sans:wght@100..900&family=Mohave:ital,wght@0,300..700;1,300..700&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Quicksand:wght@300..700&family=Rubik:wght@300..900&family=Shippori+Antique+B1&display=swap" rel="stylesheet">
</head>
<body class="bg-color">

  <?php require('inc/header.php'); ?>

  <div class="my-5 px-4">
    <h2 class="fw-bold h-font text-center">CONTACT US</h2>
    <div class="h-line bg-dark"></div>
    <p class="text-center mt-3">
      We are here to assist you with any inquiries or bookings. Whether you have questions, feedback, or special requests, feel free to reach out to us. <br> Our team is always ready to provide prompt and courteous assistance.
    </p>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-6 mb-5 px-4">

        <div class="bg-small-card rounded shadow p-4">
          <iframe class="w-100 rounded mb-4" height="320px" src="<?php echo $contact_r['iframe'] ?>" loading="lazy"></iframe>

          <h5>Address</h5>
          <a href="<?php echo $contact_r['gmap'] ?>" target="_blank" class="d-inline-block text-decoration-none text-dark mb-2">
            <i class="bi bi-geo-alt-fill"></i> <?php echo $contact_r['address'] ?>
          </a>

          <h5 class="mt-4">Call us</h5>
          <a href="tel: +<?php echo $contact_r['pn1'] ?>" class="d-inline-block mb-2 text-decoration-none text-dark">
            <i class="bi bi-telephone-fill"></i> +<?php echo $contact_r['pn1'] ?>
          </a>
          <br>
          <?php 
            if($contact_r['pn2']!=''){
              echo<<<data
                <a href="tel: +$contact_r[pn2]" class="d-inline-block text-decoration-none text-dark">
                  <i class="bi bi-telephone-fill"></i> +$contact_r[pn2]
                </a>
              data;
            }
          ?>


          <h5 class="mt-4">Email</h5>
          <a href="mailto: <?php echo $contact_r['email'] ?>" class="d-inline-block text-decoration-none text-dark">
            <i class="bi bi-envelope-fill"></i> <?php echo $contact_r['email'] ?>
          </a>

          <h5 class="mt-4">Follow us</h5>
          <?php 
            if($contact_r['tw']!=''){
              echo<<<data
                <a href="$contact_r[tw]" class="d-inline-block text-dark fs-5 me-2">
                  <i class="bi bi-twitter me-1"></i>
                </a>
              data;
            }
          ?>

          <a href="<?php echo $contact_r['fb'] ?>" class="d-inline-block text-dark fs-5 me-2">
            <i class="bi bi-facebook me-1"></i>
          </a>
          <a href="<?php echo $contact_r['insta'] ?>" class="d-inline-block text-dark fs-5">
            <i class="bi bi-instagram me-1"></i>
          </a>
        </div>
      </div>
      <div class="col-lg-6 col-md-6 px-4">
        <div class="bg-small-card rounded shadow p-4">
          <form method="POST">
            <h5>Send a message</h5>
            <div class="mt-3">
              <label class="form-label" style="font-weight: 500;">Name</label>
              <input name="name" required type="text" class="form-control shadow-none">
            </div>
            <div class="mt-3">
              <label class="form-label" style="font-weight: 500;">Email</label>
              <input name="email" required type="email" class="form-control shadow-none">
            </div>
            <div class="mt-3">
              <label class="form-label" style="font-weight: 500;">Subject</label>
              <input name="subject" required type="text" class="form-control shadow-none">
            </div>
            <div class="mt-3">
              <label class="form-label" style="font-weight: 500;">Message</label>
              <textarea name="message" required class="form-control shadow-none" rows="5" style="resize: none;"></textarea>
            </div>
            <button type="submit" name="send" class="btn text-white custom-bg mt-3">SEND</button>
          </form>
        </div>
      </div>
    </div>
  </div>


  <?php 

    if(isset($_POST['send']))
    {
      $frm_data = filteration($_POST);

      $q = "INSERT INTO `user_queries`(`name`, `email`, `subject`, `message`) VALUES (?,?,?,?)";
      $values = [$frm_data['name'],$frm_data['email'],$frm_data['subject'],$frm_data['message']];

      $res = insert($q,$values,'ssss');
      if($res==1){
        alert('success','Mail sent!');
      }
      else{
        alert('error','Server Down! Try again later.');
      }
    }
  ?>

  <?php require('inc/footer.php'); ?>

</body>
</html>