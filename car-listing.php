<?php
session_start();
include('includes/config.php');
error_reporting(E_ALL);
ini_set('display_errors', 1);
?>

<!DOCTYPE HTML>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Car Rental Portal | Car Listing</title>

  <!-- Bootstrap -->
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/owl.carousel.css">
  <link rel="stylesheet" href="assets/css/owl.transitions.css">
  <link rel="stylesheet" href="assets/css/slick.css">
  <link rel="stylesheet" href="assets/css/bootstrap-slider.min.css">
  <link rel="stylesheet" href="assets/css/font-awesome.min.css">
</head>

<body>

  <!-- Header -->
  <?php include('includes/header.php'); ?>

  <!-- Page Header -->
  <section class="page-header listing_page">
    <div class="container">
      <div class="page-header_wrap">
        <div class="page-heading">
          <h1>Car Listing</h1>
        </div>
        <ul class="coustom-breadcrumb">
          <li><a href="index.php">Home</a></li>
          <li>Car Listing</li>
        </ul>
      </div>
    </div>
    <div class="dark-overlay"></div>
  </section>

  <!-- Listing -->
  <section class="listing-page">
    <div class="container">
      <div class="row">
        <div class="col-md-9 col-md-push-3">
          <div class="result-sorting-wrapper">
            <div class="sorting-count">
              <?php
              $sql = "SELECT COUNT(id) as total FROM tblvehicles";
              $query = $dbh->prepare($sql);
              $query->execute();
              $result = $query->fetch(PDO::FETCH_OBJ);
              ?>
              <p><span><?php echo htmlentities($result->total); ?> Listings</span></p>
            </div>
          </div>

          <?php
          $sql = "SELECT v.*, b.BrandName 
                  FROM tblvehicles v 
                  JOIN tblbrands b ON b.id = v.VehiclesBrand";
          $query = $dbh->prepare($sql);
          $query->execute();
          $results = $query->fetchAll(PDO::FETCH_OBJ);

          if ($query->rowCount() > 0) {
            foreach ($results as $car) { ?>
              <div class="product-listing-m gray-bg">
                <div class="product-listing-img">
                  <img src="admin/img/vehicleimages/<?php echo htmlentities($car->Vimage1) ?: 'default.png'; ?>" class="img-responsive" alt="Car Image">
                </div>
                <div class="product-listing-content">
                  <h5><a href="vehical-details.php?vhid=<?php echo htmlentities($car->id); ?>">
                      <?php echo htmlentities($car->BrandName . ', ' . $car->VehiclesTitle); ?>
                    </a></h5>
                  <p class="list-price">Ksh. <?php echo htmlentities($car->PricePerDay); ?> Per Day</p>
                  <ul>
                    <li><i class="fa fa-user"></i> <?php echo htmlentities($car->SeatingCapacity); ?> seats</li>
                    <li><i class="fa fa-calendar"></i> <?php echo htmlentities($car->ModelYear); ?> model</li>
                    <li><i class="fa fa-car"></i> <?php echo htmlentities($car->FuelType); ?></li>
                  </ul>
                  <a href="vehical-details.php?vhid=<?php echo htmlentities($car->id); ?>" class="btn">View Details <i class="fa fa-angle-right"></i></a>
                </div>
              </div>
          <?php }
          } else {
            echo "<p>No cars found.</p>";
          } ?>
        </div>

        <!-- Sidebar -->
        <aside class="col-md-3 col-md-pull-9">
          <div class="sidebar_widget">
            <div class="widget_heading">
              <h5><i class="fa fa-filter"></i> Find Your Car</h5>
            </div>
            <div class="sidebar_filter">
              <form action="search-carresult.php" method="post">
                <div class="form-group select">
                  <select class="form-control" name="brand">
                    <option>Select Brand</option>
                    <?php
                    $sql = "SELECT * FROM tblbrands";
                    $query = $dbh->prepare($sql);
                    $query->execute();
                    $brands = $query->fetchAll(PDO::FETCH_OBJ);

                    foreach ($brands as $brand) { ?>
                      <option value="<?php echo htmlentities($brand->id); ?>">
                        <?php echo htmlentities($brand->BrandName); ?>
                      </option>
                    <?php } ?>
                  </select>
                </div>
                <div class="form-group select">
                  <select class="form-control" name="fueltype">
                    <option>Select Fuel Type</option>
                    <option value="Petrol">Petrol</option>
                    <option value="Diesel">Diesel</option>
                    <option value="CNG">CNG</option>
                  </select>
                </div>
                <div class="form-group">
                  <button type="submit" class="btn btn-block"><i class="fa fa-search"></i> Search Car</button>
                </div>
              </form>
            </div>
          </div>

          <div class="sidebar_widget">
            <div class="widget_heading">
              <h5><i class="fa fa-car"></i> Recently Listed Cars</h5>
            </div>
            <div class="recent_addedcars">
              <ul>
                <?php
                $sql = "SELECT v.*, b.BrandName FROM tblvehicles v 
                        JOIN tblbrands b ON b.id = v.VehiclesBrand 
                        ORDER BY v.id DESC LIMIT 4";
                $query = $dbh->prepare($sql);
                $query->execute();
                $recentCars = $query->fetchAll(PDO::FETCH_OBJ);

                foreach ($recentCars as $car) { ?>
                  <li class="gray-bg">
                    <div class="recent_post_img">
                      <a href="vehical-details.php?vhid=<?php echo htmlentities($car->id); ?>">
                        <img src="admin/img/vehicleimages/<?php echo htmlentities($car->Vimage1) ?: 'default.png'; ?>" alt="image">
                      </a>
                    </div>
                    <div class="recent_post_title">
                      <a href="vehical-details.php?vhid=<?php echo htmlentities($car->id); ?>">
                        <?php echo htmlentities($car->BrandName . ', ' . $car->VehiclesTitle); ?>
                      </a>
                      <p class="widget_price">Ksh. <?php echo htmlentities($car->PricePerDay); ?> Per Day</p>
                    </div>
                  </li>
                <?php } ?>
              </ul>
            </div>
          </div>
        </aside>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <?php include('includes/footer.php'); ?>

  <!-- Back to top -->
  <div id="back-top" class="back-top"><a href="#top"><i class="fa fa-angle-up"></i></a></div>

  <!-- Scripts -->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/interface.js"></script>
  <script src="assets/js/bootstrap-slider.min.js"></script>
  <script src="assets/js/slick.min.js"></script>
  <script src="assets/js/owl.carousel.min.js"></script>

</body>
</html>
