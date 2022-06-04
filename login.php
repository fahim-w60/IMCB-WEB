<?php
include_once './vendor/autoload.php';
\App\Session::init();
date_default_timezone_set("Asia/Dhaka");
$user = new \App\User\User();
if (\App\Session::get('login') == true and \App\Session::get('user_type_id') == 1) {
  header("Location: ./view/index.php");
} else if (\App\Session::get('login') == true) {
  header("Location: index2.php");
}
if (isset($_POST['login'])) {
  try {
    $user->userLogin($_POST['user_name'], md5($_POST['password']));
    if (\App\Session::get('login') == true and \App\Session::get('user_type_id') == 1) {
      header("Location: ./view/index.php");
    } else if (\App\Session::get('login') == true) {
      header("Location: index2.php");
    } else {
      \App\Session::set('login-failure', "<div class='alert alert-danger'>Invalid login Credentials !!</div>");
    }
  } catch (Exception $e) {
    \App\Session::set('error', $e->getMessage());
  }
}

$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$hostURL = $protocol . $_SERVER['HTTP_HOST'] . '/';
$url = $hostURL;
if ($hostURL == 'http://localhost/') {
  $url = $hostURL . explode("/", $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'])[1] . '/';
}

?>



<!DOCTYPE html>
<!--[if lte IE 9]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
  <meta charset="utf-8">
  <title>Institute of Management Consultants Bangladesh</title>

  <!--=================================
Meta tags
=================================-->

  <meta name="description" content="">
  <meta content="yes" name="apple-mobile-web-app-capable" />
  <meta name="viewport" content="minimum-scale=1.0, width=device-width, maximum-scale=1, user-scalable=no" />

  <!--=================================
Style Sheets
=================================-->
  <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,600,700' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="assets/css/pixeden-fonts.css">
  <link rel="stylesheet" type="text/css" href="assets/css/flexslider.css">
  <link rel="stylesheet" type="text/css" href="assets/css/jquery.vegas.css">
  <link rel="stylesheet" type="text/css" href="assets/css/prettyPhoto.css">
  <link rel="stylesheet" type="text/css" href="assets/css/animations.css">
  <link rel="stylesheet" type="text/css" href="assets/css/dl-menu.css">
  <link rel="stylesheet" href="assets/css/main.css">

  <script src="assets/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body>

  <!--======================
Preloading Splash Screen
=======================-->
  <div id="jSplash">
    Institute of Management Consultants Bangladesh
  </div>


  <!--========================================
Body Content
===========================================-->


  <div class="quick-access">
    <div class="container">
      <div class="row">
        <div class="col-sm-6">
          <div class="navbar-header desktop_menu hidden-xs">
            <a class="navbar-brand" href="index.html"><img class="logo_image" src="assets/img/logo.jpg" alt="/"></a>
          </div>
        </div>
        <div class="col-sm-6">
          <ul class="getintouch">
            <li>
              <a href="tel:18001231234">
                <i class="fa fa-sign-in" aria-hidden="true"></i>Login
              </a>
            </li>
            <li class="create_account">
              <a href="mailto:info@yourdomain.com">
                <i class="fa fa-plus" aria-hidden="true"></i>Create Account
              </a>
            </li>

          </ul>
        </div>
      </div>



    </div>
  </div>
  <!--=================================
header
=================================-->
  <header>
    <nav id="sticktop" class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header visible-xs">
          <a class="navbar-brand" href="index.html"><img class="logo_image" src="assets/img/logo.jpg" alt="/"></a>
        </div>

        <div id="dl-menu" class="xv-menuwrapper responsive-menu">
          <button class="dl-trigger">Open Menu</button>
          <div class="clearfix"></div>
          <ul class="dl-menu">
            <li class="parent active"><a href="index.html">Home</a></li>
            <li class="parent active"><a href="#">Membership</a></li>


            <li class="parent megamenu"><a href="#">Standards & Publications</a>
              <ul class="lg-submenu">

                <li><a>Features Set one</a>
                  <ul class="lg-submenu">
                    <li><a href="#"><i class="fa fa-magic"></i>Accordian</a></li>
                    <li><a href=""><i class="fa fa-folder"></i>Tabs</a></li>
                    <li><a href=""><i class="fa fa-sitemap"></i>Sitemap</a></li>
                  </ul>
                </li>

                <li><a>Features Set Two</a>
                  <ul class="lg-submenu">
                    <li><a href=""><i class="fa fa-sort-numeric-asc"></i>Pagers</a></li>
                    <li><a href=""><i class="fa fa-certificate"></i>Panels</a></li>
                    <li><a href=""><i class="fa fa-compass"></i>Alerts</a></li>
                  </ul>
                </li>
                <li><a>Features Set Three</a>
                  <ul class="lg-submenu">
                    <li><a href=""><i class="fa fa-money"></i>Pricing</a></li>
                    <li><a href=""><i class="fa fa-user"></i>Testimonials</a></li>
                    <li><a href=""><i class="fa fa-picture-o"></i>Thumbnails</a></li>
                  </ul>
                </li>
                <li><a>Features Set Four</a>
                  <ul class="lg-submenu">
                    <li><a href=""><i class="fa fa-file-o"></i>Page template</a></li>
                    <li><a href=""><i class="fa fa-thumbs-o-up"></i>Page sidebar</a></li>
                    <li><a href=""><i class="fa fa-bookmark"></i>Popovers</a></li>
                  </ul>
                </li>
                <li><a>Features Set Five</a>
                  <ul class="lg-submenu">
                    <li><a href=""><i class="fa fa-list"></i>List Group</a></li>
                    <li><a href=""><i class="fa fa-list-alt"></i>Media List</a></li>
                    <li><a href=""><i class="fa fa-laptop"></i>Parallax</a></li>
                  </ul>
                </li>
              </ul>
            </li>


            <li class="parent megamenu"><a href="#">Business Solutions</a>
              <ul class="lg-submenu">
                <li><a>Shop Pages</a>
                  <ul class="lg-submenu">
                    <li><a href="#">Shop <span class="badge badge-yellow">unique</span></a></li>
                    <li><a href="#">Shop Simple</a></li>
                    <li><a href="#">Product Detail <span class="badge badge-red">hot</span></a></li>
                    <li><a href="#">Shop Sidebar</a></li>
                    <li><a href="#">login/signup</a></li>
                    <li><a href="#">Shop Sidebar</a></li>
                    <li><a href="#">Forgot Password</a></li>
                    <li><a href="#">Cart <span class="badge">11 items</span></a></li>
                    <li><a href="#">Check out</a></li>
                  </ul>
                </li>
                <li><a>Best Sale Offers</a>
                  <ul class="lg-submenu">
                    <li><a href="#">
                        <figure><img src="assets/img/accelerator-11.svg" alt="" /></figure>
                      </a></li>
                  </ul>
                </li>
                <li><a>Weekly Exclusive offers</a>
                  <ul class="lg-submenu">
                    <li><a href="#">
                        <figure><img src="assets/img/accelerator-12.svg" alt="" /></figure>
                      </a></li>
                  </ul>
                </li>
              </ul>
            </li>

            <li class="parent"><a href="#">Learning & Events</a>
              <ul class="lg-submenu">
                <li class="parent"><a href="#">Main Pages</a>
                  <ul class="lg-submenu">
                    <li><a href="#">Blog Clasic</a></li>
                    <li><a href="#">Blog Magzine <span class="badge badge-yellow">special</span></a></li>
                    <li><a href="#">Blog Timeline</a></li>
                  </ul>
                </li>
                <li class="parent"><a href="#">Masonary</a>
                  <ul class="lg-submenu">
                    <li><a href="#">Blog Masonary</a></li>
                    <li><a href="#">Blog masonary Full</a></li>
                  </ul>
                </li>
                <li><a href="#">Blog Single</a></li>
              </ul>
            </li>

          </ul>
        </div><!-- /dl-menuwrapper -->
      </div>
    </nav>
  </header>

  <!--=================================
Page Head
=================================-->
  <div class="page-head">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <h2>Member Login</h2>
          <ol class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li class="active">Member Login</li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <!--=================================
Page Content
=================================-->

  <section class="page-template">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-md-12">
          <div class="row">
            <div class="col-xs-12 col-sm-6">
              <h3>Don't have an account?</h3>
              <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
              <a class="btn btn-info" href="#">Create Account</a>
            </div>
            <div class=" col-xs-12 col-sm-6">
              <div class="jumbotron">
                <div class="login-header">
                  <h3>Login to your account</h3>
                </div>
                <div class="login-content">
                  <?php if ($user->isIpInPermanentBlockList() || $user->isIPInLockedDownList()) { ?>
                    <div class="well" style="border-left: 2px solid red;color: #000">
                      <p>
                        <strong>ERROR: </strong>
                        Access from your IP address has been blocked for security reasons. Please contact with administrator.
                      </p>
                    </div>
                  <?php } else { ?>
                    <form method="post" role="form" id="form_login" action="">
                      <?php
                      echo \App\Session::get('login-failure');
                      \App\Session::UnsetKeySession('login-failure');
                      ?>
                      <?php
                      if (\App\Session::get('error')) {
                        echo '<div class="alert alert-danger">' . \App\Session::get('error') . '</div>';
                      }
                      \App\Session::UnsetKeySession('error');
                      ?>
                      <div class="form-group">
                        <label class="required">Username/Email</label>
                        <input type="text" class="input-field" name="user_name" placeholder="Username" required autocomplete="off" id="user_name">
                      </div>
                      <div class="form-group">
                        <label class="required">Password</label>
                        <input type="password" class="input-field" name="password" id="password" placeholder="Password" required>
                      </div>
                      <input type="checkbox"><label>keep loged-in for two weak!</label><br>
                      <button type="submit" class="btn btn-primary" name="login">Login</button>
                      <button class="btn btn-default" type="submit"><i class="fa fa-facebook"></i></button>
                      <button class="btn btn-default" type="submit"><i class="fa fa-twitter"></i></button><br>
                      <small>You can use facebook/ twitter accounts to login</small>
                    </form>

                    <!--<i class="fa fa-lock"></i>-->
                    <!--                <div class="login-bottom-links">-->
                    <!--                    <a  class="link">-->
                    <!--                        Forgot Your Password ?-->
                    <!--                    </a>-->
                    <!--                </div>-->
                  <?php } ?>
                  <br>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--column-products-->


      </div>
      <!--column-sidebar-->
    </div>
    <!--main row-->

  </section>

  <!--=================================
Footer
=================================-->
  <footer>
    <section class="widgets-area">
      <div class="container">
        <div class="row">
          <div class="col-md-3 col-xs-12">
            <a href="#" class="logo-footer"><img src="assets/img/logo.jpg" alt="" /></a>
          </div>
          <!--col-->

          <div class="col-md-6 col-xs-12">


            <p>IMCB brings together the people, ideas and tools that make our world work better.

              IMCB celebrates the unique perspectives of our community of members, staff and those served by our society. Collectively, we are the voice of quality, and we increase the use and impact of quality in response to the diverse needs in the world.</p>
          </div>
          <!--col-->


          <!--col-->

          <div class="col-md-3 col-xs-12">
            <h3>contact</h3>
            <ul class="contact-info">
              <li><a href="#">
                  <i class="livicon" data-name="location" data-onparent="true" data-size="22"></i>
                  Purana Paltan, Dhaka, Bangladesh
                </a>
              </li>
              <li><a href="#">
                  <i class="livicon" data-name="phone" data-onparent="true" data-size="22"></i>
                  +880 1710 0000
                </a>
              </li>
              <li><a href="#">
                  <i class="livicon" data-name="mail" data-onparent="true" data-size="22"></i>
                  hello@IMCB.com
                </a>
              </li>
            </ul>
          </div>
          <!--col-->
        </div>
        <!--row-->
      </div>
    </section>
    <div class="privacy-rights">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-xs-12">
            <div class="rights"> ©2022 IMCB. All rights reserved. </div>
          </div>
          <div class="col-md-6 col-xs-12">
            <ul class="rights">
              <li><a href="#">Disclaimer |</a></li>
              <li><a href="#">Privacy Policy |</a></li>
              <li><a href="#">Terms of Use</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!--=================================
Script Source
=================================-->
  <script src="assets/js/jquery-1.10.1.min.js"></script>
  <script src="assets/js/raphael-min.js"></script>
  <script src="assets/js/liveicon.js"></script>
  <script src="assets/js/jpreloader.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/jquery.waitforimages.js"></script>
  <script src="assets/js/jquery.carouFredSel-6.2.1-packed.js"></script>
  <script src="assets/js/jquery.flexslider-min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js"></script>
  <script src="assets/js/jquery.prettyPhoto.js"></script>
  <script src="assets/js/jflickrfeed.min.js"></script>
  <script src="assets/js/isotope.js"></script>
  <script src="assets/js/jquery.stellar.min.js"></script>
  <script src="assets/js/css3-animate-it.js"></script>
  <script src="assets/js/jquery.dlmenu.js"></script>
  <script src="assets/js/jquery.sticky.js"></script>
  <script src="assets/js/tweetie.min.js"></script>
  <script src="assets/js/masonry.pkgd.min.js"></script>
  <script src="assets/js/jquery.countdown.min.js"></script>
  <script src="assets/js/main.js"></script>

  <script>
    $('body').jpreLoader({
      splashID: "#jSplash",
      loaderVPos: '0%',
      autoClose: true,
    });
    /*=========Place Google Tracker Code here===========*/

    if (window.history.replaceState) {
      window.history.replaceState(null, null, window.location.href);
    }
  </script>

</body>

</html>