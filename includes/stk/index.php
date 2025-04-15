<?php
global $cybstrim;
include('../config.php');  // ✅ correct path from stk/ to config.php

session_start();
ob_start();

$link = '../../../../';
$db_link = '../../';

require 'process.php';

$vehicleid = $_GET["c_id"] ?? 0;

$sql = "SELECT tblvehicles.*, tblbrands.BrandName, tblbrands.id as bid  
        FROM tblvehicles 
        JOIN tblbrands ON tblbrands.id = tblvehicles.VehiclesBrand 
        WHERE tblvehicles.id = :c_id";

$query = $dbh->prepare($sql);
$query->bindParam(':c_id', $vehicleid, PDO::PARAM_STR); // Use $vehicleid here
$query->execute();
$results = $query->fetchAll(PDO::FETCH_OBJ);


if ($query->rowCount() > 0) {
  foreach ($results as $result) {
    $_SESSION['brndid'] = $result->bid;

    // Vehicle price from DB
    $vehicle_price = $result->PricePerDay; // assuming this column exists
  }
}



?>
<!doctype html>
<html lang="en" data-layout="vertical" data-topbar="light" data-sidebar="dark" data-sidebar-size="lg" data-sidebar-image="none" data-preloader="disable">
<head>

    <title> Checkout</title>


</head>

<body>

<?php if ($errmsg != ''): ?>
    <div class="alert alert-danger"><?php echo $errmsg; ?></div>
<?php endif; ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Modal Form</title>
</head>
<body style="margin: 0; padding: 0; font-family: Arial, sans-serif; background-color: rgba(0, 0, 0, 0.6); height: 100vh; display: flex; justify-content: center; align-items: center;">

  <form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="post" id="my-form"
        style="background: white; padding: 30px; width: 400px; border: 3px solid green; border-radius: 10px; box-shadow: 0 0 15px rgba(0,0,0,0.2); position: relative;">
    
    <h2 style="text-align: center; margin-bottom: 20px;">Payment Form</h2>

    <!-- Hidden Order Number -->
    <input type="text" name="order-no" value="#O2JDI2I3R" hidden>
    <input type="hidden" name="vehiclePrice" value="<?php echo $vehicle_price?>">

    <!-- Phone Input -->
    <div style="margin-bottom: 20px;">
      <label for="phone-number" style="display: block; margin-bottom: 5px; font-weight: bold;">Phone Number</label>
      <input type="tel" id="phone-number" name="phone" required
             placeholder="Enter Phone Number to pay..."
             style="width: 100%; padding: 10px; border-radius: 6px; border: 1px solid #ccc;">
    </div>

    <!-- Submit Button -->
    <div style="margin-bottom: 10px;">
      <button type="submit" name="pay-now" id="submit-button"
              style="width: 100%; padding: 12px; border: none; border-radius: 5px; background-color: #28a745; color: white; font-weight: bold; cursor: pointer;"
              onmouseover="this.style.backgroundColor='#218838'"
              onmouseout="this.style.backgroundColor='#28a745'">
        Pay Now
      </button>
    </div>

    <!-- Loading Button (Hidden Initially) -->
    <div style="margin-bottom: 10px;">
      <button type="button" id="loading-button"
              style="display: none; width: 100%; padding: 12px; border: none; border-radius: 5px; background-color: #007bff; color: white;">
        <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
        Processing...
      </button>
    </div>

    <!-- Success Message -->
    <div id="message" style="display: none; text-align: center; padding: 10px; background-color: #d4edda; color: #155724; border-radius: 5px;">
      Payment Successful!
    </div>

  </form>

</body>
</html>

    <script>
        /*
          document.addEventListener("DOMContentLoaded", function () {
            const form = document.getElementById("my-form");
            const submitButton = document.getElementById("submit-button");
            const loadingButton = document.getElementById("loading-button");

            form.addEventListener("submit", function (e) {
              e.preventDefault(); // Prevent the default form submission

              // Hide the submit button and show the loading button
              submitButton.style.display = "none";
              loadingButton.style.display = "block";

              // Serialize the form data
              const formData = new FormData(form);

              // Simulate an AJAX request (replace this with your actual AJAX call)
              setTimeout(function () {
                // Simulated success response
                const response = "Form submitted successfully.";

                // Display the response message
                const message = document.getElementById("message");
                message.style.display = "block";
                message.innerHTML = response;

                // Reset the form
                form.reset();

                //restore the submit button and hide the loading button
                submitButton.style.display = "block";
                loadingButton.style.display = "none";
              }, 4000);

              //form.submit();
            });
          });*/
        document.getElementById('my-form').addEventListener('submit', function (event) {
            //event.preventDefault();

            // Show loading button and hide submit button
            document.getElementById('submit-button').style.display = 'none';
            document.getElementById('loading-button').style.display = 'inline-block';

            // Simulate an AJAX request with a timeout
            setTimeout(function () {
                // Simulated success response
                const response = "Form submitted successfully.";

                // Replace this with your actual AJAX request
                fetch('https://jsonplaceholder.typicode.com/posts', {
                    method: 'POST',
                    body: new FormData(document.getElementById('my-form'))
                })
                    .then(response => response.json())
                    .then(data => {

                        form.requestSubmit()
                        // Hide loading button and show submit button
                        document.getElementById('loading-button').style.display = 'none';
                        document.getElementById('submit-button').style.display = 'inline-block';

                        // Display the response message
                        const message = document.getElementById("message");
                        message.style.display = "block";
                        message.innerHTML = response;
                    })
                    .catch(error => {
                        console.error(error);
                        // Handle errors if any
                    });
            }, 3000); // Simulating a 3-second delay for the AJAX request
        });
    </script>


</body>

</html>