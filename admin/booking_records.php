<?php
  require('inc/essentials.php');
  require('inc/db_config.php');
  adminLogin();
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
  
  <title>Admin Panel - Bookings Records</title>

  <?php require('inc/links.php'); ?>
</head>
<body class="bg-color">

  <?php require('inc/header.php'); ?>

  <div class="container-fluid" id="main-content">
    <div class="row">
      <div class="col-lg-10 ms-auto p-4 overflow-hidden">
        <h3 class="mb-4">BOOKING RECORDS</h3>

        <div class="card border-0 shadow-sm mb-4">
          <div class="bg-small-card card-body">

            <div class="text-end mb-4">
              <input type="text" id="search_input" oninput="get_bookings(this.value)" class="form-control shadow-none w-25 ms-auto" placeholder="Type to search...">
            </div>

            <div class="table-responsive">
              <table class="table table-hover border" style="min-width: 1200px;">
                <thead>
                  <tr class="bg-dark text-light">
                    <th scope="col">#</th>
                    <th scope="col">User Details</th>
                    <th scope="col">Room Details</th>
                    <th scope="col">Bookings Details</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody id="table-data">                 
                </tbody>
              </table>
            </div>

            <nav>
              <ul class="pagination mt-3" id="table-pagination">
              </ul>
            </nav>

          </div>
        </div>

      </div>
    </div>
  </div>



  <?php require('inc/scripts.php'); ?>

  <script src="scripts/booking_records.js"></script>

</body>
</html>