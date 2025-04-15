<?php
ob_start();
session_start();
$link = '../';

require $link.'system-files/betting-syst.php';


$userEmail = $_GET['ucb']?? "";

$users = tableObjects('users','WHERE `email`="'.$userEmail.'"');
$user = $users? $users[0]: new Users(0);

$userId = $_SESSION['usid'] ?? 0;

$user = new Users($userId);


if (!$user->found()){
    redirectTo('account/sign-up');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>poaBet | Deposit</title>
    <!--Shortcut Icon-->
    <link rel="icon" href="../assets/img/logo/favicon.png">
    <!--Bootstrap Min Css-->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <!--Macnific Popup Css-->
    <link rel="stylesheet" href="../assets/css/magnific-popup.css">
    <!--Owl Carousel min Css-->
    <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
    <!--Owl theme Default Css-->
    <link rel="stylesheet" href="../assets/css/owl.theme.default.css">
    <!--nice select Css-->
    <link rel="stylesheet" href="../assets/css/nice-select.css">
    <!--Glyphter Css-->
    <link rel="stylesheet" href="../assets/glyphter-font/css/Glyphter.css">
    <!--animation Css-->
    <link rel="stylesheet" href="../assets/fonts/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="../assets/fonts/line-awesome/css/line-awesome.css">
    <link rel="stylesheet" href="../assets/fonts/line-awesome/css/line-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/animate.css">
    <!--Fontawsome all min Css-->
    <link rel="stylesheet" href="../assets/css/all.min.css">
    <!--Main custom Css-->
    <link rel="stylesheet" href="../assets/css/main.css">
</head>
<body>
<!--Mian Body Area Start-->

<section class="dashboard__body mt__30 pb-60">
    <div class="container">
        <div class="row g-4">
            <div class="col-xxl-2 col-xl-2 col-lg-4">
            </div>
            <div class="col-xxl-8 col-xl-8 col-lg-8">
                <div class="dashboard__body__wrap">
                    <div class="payment__cart__check">

                    </div>
                    <div class="deposit__complate">
                        <h3>
                            Confirm Payment
                        </h3>
                        <a href="#0" class="visa__card">
                            <img src="../assets/img/profile/mpesa.png" alt="visa">
                        </a>

                        <form action="status.php" method="post">
                            <div class="single-input mb__20">
                                <input type="hidden" name="Check_request_ID" value="<?php echo $curl_Tranfer2_response->Check_request_ID ?>">
                            </div>
                            <div class="btn-area">
                                <button class="cmn--btn" name="deposit" type="submit"><span>Confirm Payment is Complete</span></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-xxl-2 col-xl-2 col-lg-4">
            </div>
        </div>
    </div>

</section>

<footer class="footer__section pt-60">
    <div class="container">
        <div class="footer__top pb-60">
            <div class="row g-5">
                <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
                    <div class="widget__items">
                        <div class="footer-head">
                            <a href="#0" class="footer-logo">
                                <img src="../assets/img/logo/footerlogo.png" alt="f-logo">
                            </a>
                        </div>
                        <div class="content-area">
                            <p>
                                Lorem ipsum dolor sit of the cart amet, consectetur adipiscing elit. I talk out of the moon.
                            </p>
                            <h6>
                                Follow Us
                            </h6>
                            <ul class="social">
                                <li>
                                    <a href="#0" class="icon">
                                        <i class="fa-brands la la-facebook-f"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#0" class="icon">
                                        <i class="fa-brands la la-instagram"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#0" class="icon">
                                        <i class="fa-brands la la-linkedin"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#0" class="icon">
                                        <i class="fa-brands la la-twitter"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-3 col-xl-2 col-lg-3 col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="widget__items">
                        <div class="footer-head">
                            <h3 class="title">
                                Company
                            </h3>
                        </div>
                        <div class="content-area">
                            <ul class="quick-link">
                                <li>
                                    <a href="index.html">
                                        <img src="../assets/img/footer/rightarrow.png" alt="angle"> Home
                                    </a>
                                </li>
                                <li>
                                    <a href="#0">
                                        <img src="../assets/img/footer/rightarrow.png" alt="angle"> Slots
                                    </a>
                                </li>
                                <li>
                                    <a href="#0">
                                        <img src="../assets/img/footer/rightarrow.png" alt="angle"> Tournament
                                    </a>
                                </li>
                                <li>
                                    <a href="#0">
                                        <img src="../assets/img/footer/rightarrow.png" alt="angle"> Jackpots
                                    </a>
                                </li>
                                <li>
                                    <a href="livecasino.html">
                                        <img src="../assets/img/footer/rightarrow.png" alt="angle"> Live Games
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-6 col-sm-3 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="widget__items">
                        <div class="footer-head">
                            <h3 class="title">
                                Support
                            </h3>
                        </div>
                        <div class="content-area">
                            <ul class="quick-link">
                                <li>
                                    <a href="#0">
                                        <img src="../assets/img/footer/rightarrow.png" alt="angle"> Faqs
                                    </a>
                                </li>
                                <li>
                                    <a href="#0">
                                        <img src="../assets/img/footer/rightarrow.png" alt="angle"> Support
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-4 col-xl-5 col-lg-4 col-md-6 col-sm-9 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="widget__items">
                        <div class="footer-head">
                            <h3 class="title">
                                Subscribe Our Newslatter
                            </h3>
                        </div>

                        <p>
                            Proin mauris ligula, pretium eu est ut, imperdiet imperdiet massa. Nullam sodales ut orci vehicula aliquam. Suspendisse.
                        </p>
                        <div class="content-area">
                            <form action="#0">
                                <input type="text" placeholder="Enter Your Email address">
                                <button class="cmn--btn" type="submit">
                                    <span>Subscribe</span>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer__bottom">
            <p class="text-white">
                Copyright &copy; 2023, <a href="#0" class="text--base">SportOdds</a> - All Right Reserved
            </p>
            <ul class="bottom__ling">
                <li>
                    <a href="#0" class="text-white">
                        Affiliate program
                    </a>
                </li>
                <li>
                    <a href="#0" class="text-white">
                        Terms & conditions
                    </a>
                </li>
                <li>
                    <a href="#0" class="text-white">
                        Bonus terms & conditions
                    </a>
                </li>
            </ul>
        </div>
    </div>
</footer>

<!--Jquery min js-->
<script src="../assets/js/jquery-3.6.0.min.js"></script>
<!--Bootstrap bundle min js-->
<script src="../assets/js/bootstrap.bundle.min.js"></script>
<!--Magnific Popup js-->
<script src="../assets/js/jquery.magnific-popup.min.js"></script>
<!--Owl Carousel min js-->
<script src="../assets/js/owl.carousel.min.js"></script>
<!--nice select min js-->
<script src="../assets/js/jquery.nice-select.min.js"></script>
<!--Wow min js-->
<script src="../assets/js/wow.min.js"></script>
<!--jquery ui min-->
<script src="../assets/js/jquery-ui.min.js"></script>
<!--Api min js-->
<script src="../assets/js/api.js"></script>
<!--Main js-->
<script src="../assets/js/main.js"></script>

</body>
</html>

