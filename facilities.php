<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <?php require('inc/links.php'); ?>
  <title><?php echo $settings_r['site_title'] ?> - FACILITIES</title>
  <link rel="stylesheet" href="css/common.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Andika:ital,wght@0,400;0,700;1,400;1,700&family=Comme:wght@100..900&family=Cousine:ital,wght@0,400;0,700;1,400;1,700&family=Fredoka:wght@300..700&family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Kumbh+Sans:wght@100..900&family=Mohave:ital,wght@0,300..700;1,300..700&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Quicksand:wght@300..700&family=Rubik:wght@300..900&family=Shippori+Antique+B1&display=swap" rel="stylesheet">
  <style>
    .pop:hover{
      border-top-color: var(--beige) !important;
      transform: scale(1.03);
      transition: all 0.3s;
    }
  </style>
</head>
<body class="bg-color">

  <?php require('inc/header.php'); ?>

  <div class="my-5 px-4">
    <h2 class="fw-bold h-font text-center">OUR FACILITIES</h2>
    <div class="h-line bg-dark"></div>
    <p class="text-center mt-3">
    At Paarivar Hotel, we redefine comfort through a curated selection of premium facilities designed for discerning guests. <br> Every detail has been thoughtfully crafted to offer an experience of refined luxury, from seamless convenience to indulgent relaxation. <br> Our facilities are designed to cater to the diverse needs of our guests, ensuring a memorable stay that exceeds your expectations.
    </p>
  </div>

  <div class="container">
    <div class="row">
      <?php 
        $res = selectAll('facilities');
        $path = FACILITIES_IMG_PATH;

        while($row = mysqli_fetch_assoc($res)){
          echo<<<data
            <div class="col-lg-4 col-md-6 mb-5 px-4">
              <div class="bg-small-card rounded shadow p-4 border-top border-4 border-dark pop">
                <div class="d-flex align-items-center mb-2">
                  <img src="$path$row[icon]" width="40px">
                  <h5 class="m-0 ms-3">$row[name]</h5>
                </div>
                <p>$row[description]</p>
              </div>
            </div>
          data;
        }
      ?>
    </div>
  </div>


  <?php require('inc/footer.php'); ?>

</body>
</html>