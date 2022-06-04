<?php
include_once '../vendor/autoload.php';
\App\Session::init();

use App\Session;
//use App\DBConnection;

$conn = new \App\DBConnection();

$profile = new \App\User\User();

$flag = 0;


if (isset($_POST['submit'])) {


    if ($_FILES["prosper_signature"]["name"] != '') {
        $prosper_signature_name = "prosper_signature" . substr(md5(time()), 0, 10) . "-" . date('Y-m-d') . '.' . $_FILES["prosper_signature"]["name"];
        $accepted_ext = array("jpg", "png", "jpeg", "svg", "JPG", "PNG", "JPEG", "SVG");
        $extension = pathinfo($prosper_signature_name, PATHINFO_EXTENSION);
        if (!in_array($extension, $accepted_ext)) {
            // echo '<script>Hello World</script>';
            $prosper_error = 1;
        }
        $prosper_signature_tname = $_FILES["prosper_signature"]["tmp_name"];
        $upload_dir_prosper = '../assets/img/proses signature';
        move_uploaded_file($prosper_signature_tname, $upload_dir_prosper . '/' . $prosper_signature_name);
        $_POST['prosper_signature'] = $prosper_signature_name;
    }

    if ($_FILES["seconder_signature"]["name"] != '') {
        $seconder_signature_name = "seconder_signature" . substr(md5(time()), 0, 10) . "-" . date('Y-m-d') . '.' . $_FILES["seconder_signature"]["name"];
        $accepted_ext = array("jpg", "png", "jpeg", "svg", "JPG", "PNG", "JPEG", "SVG");
        $extension = pathinfo($seconder_signature_name, PATHINFO_EXTENSION);
        if (!in_array($extension, $accepted_ext)) {
            $seconder_error = 1;
        }
        $seconder_signature_tname = $_FILES["seconder_signature"]["tmp_name"];
        $upload_dir_seconder = '../assets/img/proses signature';
        move_uploaded_file($seconder_signature_tname, $upload_dir_seconder . '/' . $seconder_signature_name);
        $_POST['seconder_signature'] = $seconder_signature_name;
    }


    if ($_FILES["app_signature"]["name"] != '') {
        $application_signature_name = "applicant_signature" . substr(md5(time()), 0, 10) . "-" . date('Y-m-d') . '.' . $_FILES["app_signature"]["name"];
        $accepted_ext = array("jpg", "png", "jpeg", "svg", "JPG", "PNG", "JPEG", "SVG");
        $extension = pathinfo($application_signature_name, PATHINFO_EXTENSION);
        if (!in_array($extension, $accepted_ext)) {
            $application_error = 1;
        }
        $app_signature_tname = $_FILES["app_signature"]["tmp_name"];
        $upload_dir = '../assets/img/applicant signature';
        move_uploaded_file($app_signature_tname, $upload_dir . '/' . $application_signature_name);
        $_POST['app_signature'] = $application_signature_name;
    }
    $_POST['password'] = md5('123456');
    $_POST['profile_type_id'] = 100;
    $_POST['user_type_id'] = 2;
    // echo $_POST['member_type'] . "<br>";
    // echo $_POST['name_1'] . "<br>";
    // echo $_POST['preferred_name'] . "<br>";
    // echo $_POST['dob'] . "<br>";
    // echo $_POST['business_address'] . "<br>";
    // echo $_POST['phone_1'] . "<br>";
    // echo $_POST['private_address'] . "<br>";
    // echo $_POST['phone_2'] . "<br>";
    // echo $_POST['mobile_1'] . "<br>";
    // echo $_POST['mail_1'] . "<br>";
    // echo $_POST['address_type'] . "<br>";
    // echo $_POST['university'] . "<br>";
    // echo $_POST['qualification'] . "<br>";
    // echo $_POST['qual_year'] . "<br>";
    // echo $_POST['consultant_1'] . "<br>";
    // echo $_POST['consultant_experience'] . "<br>";
    // echo $_POST['consulting_month'] . "<br>";
    // echo $_POST['consulting_year'] . "<br>";
    // echo $_POST['employer_j'] . "<br>";
    // echo $_POST['month_j1'] . "<br>";
    // echo $_POST['year_j1'] . "<br>";
    // echo $_POST['month_j2'] . "<br>";
    // echo $_POST['year_j2'] . "<br>";
    // echo $_POST['position_j'] . "<br>";
    // echo $_POST['name_j'] . "<br>";
    // echo $_POST['address_j'] . "<br>";
    // echo $_POST['phone_j'] . "<br>";
    // echo $_POST['member_1'] . "<br>";
    // echo $_POST['app_signature'] . "<br>";
    // echo $_POST['date_3'] . "<br>";

    if (
        isset($_POST['member_type']) && isset($_POST['name_1']) && isset($_POST['preferred_name']) && isset($_POST['dob']) && isset($_POST['business_address']) && isset($_POST['phone_1']) && isset($_POST['private_address']) && isset($_POST['phone_2']) && isset($_POST['mobile_1']) && isset($_POST['mail_1']) && isset($_POST['address_type']) && isset($_POST['university']) && isset($_POST['qualification']) &&
        isset($_POST['qual_year']) && isset($_POST['consultant_1']) && isset($_POST['consultant_experience']) && isset($_POST['consulting_month'])  && isset($_POST['consulting_year']) && isset($_POST['employer_j']) && isset($_POST['month_j1']) && isset($_POST['year_j1']) && isset($_POST['month_j2']) && isset($_POST['year_j2']) && isset($_POST['position_j']) && isset($_POST['name_j']) && isset($_POST['address_j'])  && isset($_POST['phone_j']) && isset($_POST['member_1']) && $_FILES['app_signature']['name'] != '' && isset($_POST['date_3'])
    ) {
        $dateOfBirth = $_POST['dob'];
        $today = date('Y-m-d');
        $diff = date_diff(date_create($dateOfBirth), date_create($today));
        $difference_age = $diff->format('%y');

        $prosper_date = $_POST['date_1'];
        $prosper_date = strtotime($prosper_date);
        $today = strtotime($today);
        if ($prosper_date > $today && $_POST['date_1']) {
            $difference_prosper = 1;
        }

        $seconder_date = $_POST['date_2'];
        $seconder_date = strtotime($seconder_date);
        if ($seconder_date > $today && isset($_POST['date_2'])) {
            $difference_seconder = 1;
        }

        $last_date = $_POST['date_3'];
        $last_date = strtotime($last_date);
        if ($last_date > $today && isset($_POST['date_3'])) {
            $difference_last = 1;
        }

        if ($profile->checkDuplicateNmbr($_POST['mobile_1'])) {

            $number_taken = 1;
        } else if ($profile->checkDuplicateMail($_POST['mail_1'])) {
            $mail_taken = 1;
        }
        // echo   $difference_last . "difference last<br>";
        // echo   $difference_seconder . "difference seconder<br>";
        // echo $difference_prosper . "difference prosper<br>";
        // echo $application_error . "application error<br>";
        // echo  $seconder_error . "seconder error<br>";
        // echo $prosper_error . "prosper error <br>";
        else if (isset($difference_last) || isset($difference_seconder) || isset($difference_prosper) || isset($application_error) || isset($seconder_error) || isset($prosper_error)) {
            $error = 1;
        } else {

            $profile->set($_POST);
            //$profile->show_data();
            $profile_id = $profile->insert_userProfile();
            $entry_user_id = $profile->insert_user($profile_id);
            $profile->insert_userAddress($profile_id);
            $profile->insert_educationHistory($profile_id, $entry_user_id);
            $profile->insert_employmentHistory($profile_id, $entry_user_id);
            $profile->insert_imcb_membership_info($profile_id, $entry_user_id);
            $profile->insert_member_client_reference_update($profile_id, $entry_user_id);
            $profile->insert_memberProsper($profile_id, $entry_user_id);
            $profile->insert_memberConsultingExperiencee($profile_id, $entry_user_id);
            $complete = 1;
        }
    } else {
        $error = 1;
    }
}

?>


<!DOCTYPE html>
<!--[if lte IE 9]>         
<html class="no-js lt-ie9">
   <![endif]-->
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
    <link rel="stylesheet" type="text/css" href="../assets/css/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/pixeden-fonts.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/flexslider.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/jquery.vegas.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/prettyPhoto.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/animations.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/dl-menu.css">
    <!-- <link rel="stylesheet" type="text/css" href="../assets/css/jquery-ui.min.css"> -->
    <link rel="stylesheet" href="../assets/css/main.css">
    <script src="../assets/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
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
                        <a class="navbar-brand" href="index.html"><img class="logo_image" src="../assets/img/logo.jpg" alt="/"></a>
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
                        <li class="parent megamenu">
                            <a href="#">Standards & Publications</a>
                            <ul class="lg-submenu">
                                <li>
                                    <a>Features Set one</a>
                                    <ul class="lg-submenu">
                                        <li><a href="#"><i class="fa fa-magic"></i>Accordian</a></li>
                                        <li><a href=""><i class="fa fa-folder"></i>Tabs</a></li>
                                        <li><a href=""><i class="fa fa-sitemap"></i>Sitemap</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a>Features Set Two</a>
                                    <ul class="lg-submenu">
                                        <li><a href=""><i class="fa fa-sort-numeric-asc"></i>Pagers</a></li>
                                        <li><a href=""><i class="fa fa-certificate"></i>Panels</a></li>
                                        <li><a href=""><i class="fa fa-compass"></i>Alerts</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a>Features Set Three</a>
                                    <ul class="lg-submenu">
                                        <li><a href=""><i class="fa fa-money"></i>Pricing</a></li>
                                        <li><a href=""><i class="fa fa-user"></i>Testimonials</a></li>
                                        <li><a href=""><i class="fa fa-picture-o"></i>Thumbnails</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a>Features Set Four</a>
                                    <ul class="lg-submenu">
                                        <li><a href=""><i class="fa fa-file-o"></i>Page template</a></li>
                                        <li><a href=""><i class="fa fa-thumbs-o-up"></i>Page sidebar</a></li>
                                        <li><a href=""><i class="fa fa-bookmark"></i>Popovers</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a>Features Set Five</a>
                                    <ul class="lg-submenu">
                                        <li><a href=""><i class="fa fa-list"></i>List Group</a></li>
                                        <li><a href=""><i class="fa fa-list-alt"></i>Media List</a></li>
                                        <li><a href=""><i class="fa fa-laptop"></i>Parallax</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="parent megamenu">
                            <a href="#">Business Solutions</a>
                            <ul class="lg-submenu">
                                <li>
                                    <a>Shop Pages</a>
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
                                <li>
                                    <a>Best Sale Offers</a>
                                    <ul class="lg-submenu">
                                        <li>
                                            <a href="#">
                                                <figure><img src="assets/img/accelerator-11.svg" alt="" /></figure>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a>Weekly Exclusive offers</a>
                                    <ul class="lg-submenu">
                                        <li>
                                            <a href="#">
                                                <figure><img src="assets/img/accelerator-12.svg" alt="" /></figure>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="parent">
                            <a href="#">Learning & Events</a>
                            <ul class="lg-submenu">
                                <li class="parent">
                                    <a href="#">Main Pages</a>
                                    <ul class="lg-submenu">
                                        <li><a href="#">Blog Clasic</a></li>
                                        <li><a href="#">Blog Magzine <span class="badge badge-yellow">special</span></a></li>
                                        <li><a href="#">Blog Timeline</a></li>
                                    </ul>
                                </li>
                                <li class="parent">
                                    <a href="#">Masonary</a>
                                    <ul class="lg-submenu">
                                        <li><a href="#">Blog Masonary</a></li>
                                        <li><a href="#">Blog masonary Full</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Blog Single</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /dl-menuwrapper -->
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
                    <h2>Member Registration</h2>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                        <li class="active">Member Registration</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <?php
    if (isset($complete)) {
    ?>
        <div class="alert alert-success alert-dismissible">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <p>
                Profile Added Successfully !!......

            </p>
        </div>
    <?php
    }
    if (isset($error)) {
    ?>
        <div class="alert alert-success alert-dismissible">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <p>
                Invalid Information !!......

            </p>
        </div>
    <?php }
    if (isset($number_taken)) {
    ?>
        <div class="alert alert-success alert-dismissible">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <p>
                This number is already taken !!......

            </p>
        </div>
    <?php } ?>
    <?php
    if (isset($mail_taken)) {
    ?>
        <div class="alert alert-success alert-dismissible">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <p>
                This mail is already taken !!......

            </p>
        </div>
    <?php }
    ?>

    <!--=================================
            Page Content
            =================================-->
    <section class="page-template">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <div class="row">
                        <div class=" col-xs-12 col-sm-12">
                            <div class="jumbotron fff">
                                <h3>APPLICATION FOR MEMBERSHIP</h3>
                                <form action="" method="post" enctype="multipart/form-data">
                                    <br>
                                    <h4><u>MEMBERSHIP GRADE</u></h4>
                                    <p>I wish to apply for membership of IMCB Bangladesh as a</p>
                                    <div class="row no_float mb-3">
                                        <div class="col-md-12 ">
                                            <?php
                                            $sql = "SELECT * FROM u_contact_category_types";
                                            $stmt = \App\DBConnection::myQuery($sql);
                                            $stmt->execute();

                                            $row = $stmt->fetchAll(PDO::FETCH_ASSOC);
                                            //var_dump($row);
                                            foreach ($row as $rows) {
                                            ?>

                                                <input class="has-error has-danger" type="radio" id="" name="member_type" value="<?php echo $rows['contact_category_type_id'] ?>" required>
                                                <label><?php echo $rows['contact_category_type'] ?></label>


                                            <?php } ?>



                                        </div>
                                    </div>
                                    <br>
                                    <br>
                                    <h4><u>PERSONAL DETAILS</u></h4>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-4 ">
                                                <label>Name</label>
                                                <input class="form-control mandatory_field" name="name_1" type="text" placeholder="name" required>
                                            </div>
                                            <div class="col-md-4  ">
                                                <label>Preferred Name</label>
                                                <input class="form-control" name="preferred_name" type="text" placeholder="preferred name" required>
                                            </div>
                                            <div class="col-md-4">
                                                <label>Date of Birth</label>
                                                <input class="form-control" id="dob" type="date" name="dob" required>
                                                <span id="date_of_birth" class="text-danger font-weight-bold"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-4">
                                                <label>Company Name</label>
                                                <input class="form-control" placeholder="company name" name="company_name" type="text">
                                            </div>
                                            <div class="col-md-4">
                                                <label>No. of Employees </label>
                                                <input class="form-control" type="number" name="noe" placeholder="no. of employees"><br>
                                            </div>

                                            <div class="col-md-4">
                                                <label> Position Title </label>
                                                <input class="form-control" type="text" name="position_title" placeholder="position title">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-4">
                                                <label>Business Address </label>
                                                <input class="form-control" type="text" name="business_address" placeholder="business_address" required>
                                            </div>
                                            <div class="col-md-4">
                                                <label>Phone</label>
                                                <input class="form-control" type="tel" name="phone_1" placeholder="01234567890" pattern="[0-9]{11}" required>
                                            </div>
                                            <div class="col-md-4">
                                                <label>Fax</label>
                                                <input class="form-control" type="tel" name="fax_1" placeholder="fax">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-4">
                                                <label>Private Address</label>
                                                <input class="form-control" type="text" name="private_address" placeholder="private Address" required>
                                            </div>
                                            <div class="col-md-4">
                                                <label>Phone</label>
                                                <input class="form-control" type="tel" name="phone_2" placeholder="01234567890" pattern="[0-9]{11}" required>
                                            </div>
                                            <div class="col-md-4">
                                                <label>Fax</label>
                                                <input class="form-control" type="tel" name="fax_2" placeholder="fax">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-4 ">
                                                <label>Mobile</label>
                                                <input class="form-control" type="tel" name="mobile_1" placeholder="01234567890" pattern="[0-9]{11}" required>
                                            </div>
                                            <div class="col-md-3 ">
                                                <label>E-mail Address </label>
                                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" type="email" name="mail_1" placeholder="e-mail address" required>
                                            </div>
                                            <div class="col-md-5 lub">
                                                <label>Send Mail to</label>
                                                <div class="no_float">
                                                    <input type="radio" id="6" name="address_type" value="6" required>
                                                    <label>Business Address</label>

                                                    <input type="radio" id="7" name="address_type" value="7">
                                                    <label>Private Address</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4>
                                                <u>EDUCATION</u>
                                            </h4>
                                            <a class="btn btn-info pull-right mr-15" id="addItem">
                                                <i class="zmdi zmdi-plus-circle" style="color: rgb(241, 17, 17);"></i>
                                                Add</a>
                                            <div class="col-md-12 mt-10 expense-sidebar-left">
                                                <div class="single-item" id="single">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <label for="expense_typeIDs" class="control-label mb-1">
                                                                    University/College</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <label for="itemUnitPrices" class="control-label mb-10">
                                                                    Qualification Obtained </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <label for="remarks" class="control-label mb-10">
                                                                    Year</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" id="item">
                                                        <div class="col-md-4">
                                                            <div class="form-group ">
                                                                <input type="text" class="form-control" name="university[]" placeholder="university/college" required>
                                                            </div>
                                                        </div>
                                                        <!--                                                    <div class="col-md-2 hidden">-->
                                                        <!--                                                        -->
                                                        <!--                                                    </div>-->
                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <input type="text" step="any" name="qualification[]" id="itemUnitPrice1" class="form-control" placeholder="qualification obtained" required>
                                                            </div>
                                                        </div>
                                                        <!--                                                    <div class="col-md-1">-->
                                                        <!--                                                        <div class="form-group">-->
                                                        <!--                                                        </div>-->
                                                        <!--                                                    </div>-->
                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <input name="qual_year[]" type="number" id="remarks1" class="form-control" placeholder="year" pattern="[0-9]{4}" required>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="more-items"></div>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <br>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label> Membership of professional bodies</label>
                                            <input class="lab form-control" type="text" name="professional_body" placeholder="membership professional body">
                                        </div>
                                    </div>
                                    <br><br><br>
                                    <h4><u>MANAGEMENT CONSULTING EXPERIENCE</u></h4>
                                    <br>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-8">
                                                <label>I am a</label>
                                                <div class="no_float">
                                                    <input type="radio" id="public" name="consultant_1" value="public_consultant" required>
                                                    <label>consultant in public practice </label>
                                                    <input type="radio" id="internal" name="consultant_1" value="international_consultant">
                                                    <label>an internal consultant </label>
                                                    <input type="radio" id="academic" name="consultant_1" value="academic_consultant">
                                                    <label>an academic consultant</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <label>I have spent</label>
                                                <input style="width:60%;" class="form-control" type="number" name="consultant_experience" placeholder="age" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-5">
                                                <label>years working as a management consultant commencing</label>
                                            </div>
                                            <div class="col-md-7">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <select name="consulting_month" class="form-control" required>
                                                            <option style="font-weight:bold;" value="">month</option>
                                                            <option style="font-weight:bold;" value="january">january</option>
                                                            <option style="font-weight:bold;" value="february">february</option>
                                                            <option style="font-weight:bold;" value="march">march</option>
                                                            <option style="font-weight:bold;" value="april">april</option>
                                                            <option style="font-weight:bold;" value="may">may</option>
                                                            <option style="font-weight:bold;" value="june">june</option>
                                                            <option style="font-weight:bold;" value="july">july</option>
                                                            <option style="font-weight:bold;" value="august">august</option>
                                                            <option style="font-weight:bold;" value="september">september</option>
                                                            <option style="font-weight:bold;" value="october">october</option>
                                                            <option style="font-weight:bold;" value="november">november</option>
                                                            <option style="font-weight:bold;" value="december">december</option>

                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <input style="width:120%" class="form-control" id="year2" placeholder="year" type="number" name="consulting_year" pattern="[0-9]{4}" required>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label>My major specialization areas are (e.g. Market Research, Human Resources, Strategic Planning, etc)</label>
                                        </div>
                                    </div>
                                    <textarea class="form-control" id="" name="major_specification" rows="1" cols="10" placeholder="major specialization areas"></textarea>
                                    <label>I am applying for the membership of the Institute of Management Consultants Bangladesh because</label>
                                    <textarea class="form-control" id="" name="applying_reason" rows="1" cols="10" placeholder="applying reason"></textarea>
                                    </p>

                                    <hr>
                                    <h4><u>EMPLOYMENT HISTORY</u></h4>

                                    <p class="employment_employer">Last Ten Years (current position first). Please use separate sheets if necessary.</p>

                                    <!-- <div class="form-group row">
                                            <label for="inputPassword" class="col-sm-1 col-form-label">Password</label>
                                            <div class="col-sm-3">
                                              <input type="password" class="" id="inputPassword" placeholder="Password">
                                            </div>
                                        </div> -->
                                    <!-- <div class="row">
                                            <div class="col-md-12">
                                                    <div class="col-md-1">
                                                        <label>Employer</label>
                                                    </div> 
                                                    <div class="col-md-2">
                                                        <input  class="form-control" type="text" placeholder="Designation">
                                                    </div>
                                                    <div class="col-md-1">
                                                    <label >From</label> 
                                                    </div>
                                                    <div class="col-md-1"> 
                                                    <input  class="form-control" type="text" placeholder="month">
                                                    </div>
                                                    <div class="col-md-1">
                                                    <input  class="form-control" type="text" placeholder="year">
                                                    </div> 
                                                    <div class="col-md-0.5">
                                                    <label>To</label>
                                                    </div>
                                                    <div class="col-md-1">
                                                    <input  class="form-control" type="text" placeholder="month">
                                                    </div>
                                                    <div class="col-md-1">
                                                    <input  class="form-control" type="text" placeholder="year">
                                                    </div> 
                                                
                                            </div>
                                        </div> -->
                                    <!-- <p>Position and summary of major duties</p><textarea class="form-control" id="" name="" rows="1" cols="10"></textarea> -->

                                    <div class="row">
                                        <div class="col-md-12">
                                            <a class="btn btn-info pull-right mr-15 name_box24" id="addEmployee">
                                                <i class="zmdi zmdi-plus-circle" style="color: rgb(241, 17, 17);"></i>
                                                Add</a>
                                            <div class="col-md-12 mt-10 expense-sidebar-left">
                                                <div class="single-item" id="double">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <label for="expense_typeIDs" class="control-label mb-10 ">
                                                                    Employer</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="col-md-12">
                                                                <div class="form-group col-md-12">
                                                                    <label for="itemUnitPrices" class="control-label mb-10">
                                                                        From </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="col-md-12">
                                                                <div class="form-group col-md-12">
                                                                    <label for="itemUnitPrices" class="control-label mb-10">
                                                                        To </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" id="item2">
                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" name="employer_j[]" placeholder="designation" required>
                                                            </div>
                                                        </div>
                                                        <!--                                                    <div class="col-md-2 hidden">-->
                                                        <!--                                                        -->
                                                        <!--                                                    </div>-->
                                                        <div class="col-md-4">
                                                            <div class="col-md-12">
                                                                <div class="form-group col-md-6">
                                                                    <select name="month_j1[]" class="form-control" required>
                                                                        <option style="font-weight:bold;" value="">month</option>
                                                                        <option style="font-weight:bold;" value="january">january</option>
                                                                        <option style="font-weight:bold;" value="february">february</option>
                                                                        <option style="font-weight:bold;" value="march">march</option>
                                                                        <option style="font-weight:bold;" value="april">april</option>
                                                                        <option style="font-weight:bold;" value="may">may</option>
                                                                        <option style="font-weight:bold;" value="june">june</option>
                                                                        <option style="font-weight:bold;" value="july">july</option>
                                                                        <option style="font-weight:bold;" value="august">august</option>
                                                                        <option style="font-weight:bold;" value="september">september</option>
                                                                        <option style="font-weight:bold;" value="october">october</option>
                                                                        <option style="font-weight:bold;" value="november">november</option>
                                                                        <option style="font-weight:bold;" value="december">december</option>

                                                                    </select>
                                                                    <!-- <input type="text" step="any" name="month_j1[]" id="itemUnitPrice-1" class="form-control" placeholder="month"> -->
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <input type="number" step="any" name="year_j1[]" id="itemUnitPrice-2" class="form-control" placeholder="year" pattern="[0-9]{4}" required>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--                                                    <div class="col-md-1">-->
                                                        <!--                                                        <div class="form-group">-->
                                                        <!--                                                        </div>-->
                                                        <!--                                                    </div>-->
                                                        <div class="col-md-4">
                                                            <div class="col-md-12">
                                                                <div class="form-group col-md-6">
                                                                    <select name="month_j2[]" class="form-control" required>
                                                                        <option style="font-weight:bold;" value="">month</option>
                                                                        <option style="font-weight:bold;" value="january">january</option>
                                                                        <option style="font-weight:bold;" value="february">february</option>
                                                                        <option style="font-weight:bold;" value="march">march</option>
                                                                        <option style="font-weight:bold;" value="april">april</option>
                                                                        <option style="font-weight:bold;" value="may">may</option>
                                                                        <option style="font-weight:bold;" value="june">june</option>
                                                                        <option style="font-weight:bold;" value="july">july</option>
                                                                        <option style="font-weight:bold;" value="august">august</option>
                                                                        <option style="font-weight:bold;" value="september">september</option>
                                                                        <option style="font-weight:bold;" value="october">october</option>
                                                                        <option style="font-weight:bold;" value="november">november</option>
                                                                        <option style="font-weight:bold;" value="december">december</option>

                                                                    </select>
                                                                    <!-- <input type="text" step="any" name="month_j2[]" id="itemUnitPrice-3" class="form-control" placeholder="month"> -->
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <input type="number" step="any" name="year_j2[]" id="itemUnitPrice1-4" class="form-control" placeholder="year" pattern="[0-9]{4}" required>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12 form-group">
                                                            <textarea class="form-control" id="itemUnitPrice1-5" name="position_j[]" rows="1" cols="10" placeholder="position and summary of major duties" required></textarea>
                                                        </div>
                                                    </div>
                                                    <div id="more-items"></div>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <br>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- <div class="row">
                                            <div class="col-md-12">
                                                    <div class="col-md-1">
                                                        <label>Employer</label>
                                                    </div> 
                                                    <div class="col-md-2">
                                                        <input  class="form-control" type="text" placeholder="Designation">
                                                    </div>
                                                    <div class="col-md-1">
                                                    <label >From</label> 
                                                    </div>
                                                    <div class="col-md-1"> 
                                                    <input  class="form-control" type="text" placeholder="month">
                                                    </div>
                                                    <div class="col-md-1">
                                                    <input  class="form-control" type="text" placeholder="year">
                                                    </div> 
                                                    <div class="col-md-0.5">
                                                    <label>To</label>
                                                    </div>
                                                    <div class="col-md-1">
                                                    <input  class="form-control" type="text" placeholder="month">
                                                    </div>
                                                    <div class="col-md-1">
                                                    <input  class="form-control" type="text" placeholder="year">
                                                    </div> 
                                                
                                            </div>
                                        </div>

                                     <p>Employer</p><input type="text">
                                        <p>From</p><input type="text" placeholder="month"><input class="" type="text" placeholder="year">
                                        <p>To</p><input class="" type="text" placeholder="month"><input class="" type="text" placeholder="year"> -->

                                    <!-- <p>Position and summary of major duties</p><textarea class="form-control" id="" name="" rows="1" cols="10"></textarea> -->

                                    <!-- <div class="row">
                                            <div class="col-md-12">
                                                    <div class="col-md-1">
                                                        <label>Employer</label>
                                                    </div> 
                                                    <div class="col-md-2">
                                                        <input  class="form-control" type="text" placeholder="Designation">
                                                    </div>
                                                    <div class="col-md-1">
                                                    <label >From</label> 
                                                    </div>
                                                    <div class="col-md-1"> 
                                                    <input  class="form-control" type="text" placeholder="month">
                                                    </div>
                                                    <div class="col-md-1">
                                                    <input  class="form-control" type="text" placeholder="year">
                                                    </div> 
                                                    <div class="col-md-0.5">
                                                    <label>To</label>
                                                    </div>
                                                    <div class="col-md-1">
                                                    <input  class="form-control" type="text" placeholder="month">
                                                    </div>
                                                    <div class="col-md-1">
                                                    <input  class="form-control" type="text" placeholder="year">
                                                    </div> 
                                                
                                            </div>
                                        </div> -->
                                    <!-- <p>Employer</p><input class="name_box46" type="text">
                                        <p>From</p><input class="name_box47" type="text" placeholder="month"><input class="name_box48" type="text" placeholder="year">
                                        <p>To</p><input class="name_box49" type="text" placeholder="month"><input class="name_box50" type="text" placeholder="year"> -->

                                    <!-- <p>Position and summary of major duties</p><textarea class="form-control" id="" name="" rows="1" cols="10"></textarea> -->

                                    <!-- <div class="row">
                                            <div class="col-md-12">
                                                    <div class="col-md-1">
                                                        <label>Employer</label>
                                                    </div> 
                                                    <div class="col-md-2">
                                                        <input  class="form-control" type="text" placeholder="Designation">
                                                    </div>
                                                    <div class="col-md-1">
                                                    <label >From</label> 
                                                    </div>
                                                    <div class="col-md-1"> 
                                                    <input  class="form-control" type="text" placeholder="month">
                                                    </div>
                                                    <div class="col-md-1">
                                                    <input  class="form-control" type="text" placeholder="year">
                                                    </div> 
                                                    <div class="col-md-0.5">
                                                    <label>To</label>
                                                    </div>
                                                    <div class="col-md-1">
                                                    <input  class="form-control" type="text" placeholder="month">
                                                    </div>
                                                    <div class="col-md-1">
                                                    <input  class="form-control" type="text" placeholder="year">
                                                    </div> 
                                                
                                            </div>
                                        </div> -->


                                    <!-- <p>Employer</p><input class="name_box51" type="text">
                                        <p>From</p><input class="name_box52" type="text" placeholder="month"><input class="name_box53" type="text" placeholder="year">
                                        <p>To</p><input class="name_box54" type="text" placeholder="month"><input class="name_box55" type="text" placeholder="year"> -->

                                    <!-- <p>Position and summary of major duties</p><textarea class="form-control" id="" name="" rows="1" cols="10"></textarea> -->
                                    <br><br>

                                    <h4><u>PROPOSER AND SECONDER</u></h4>
                                    <p>We, the undersigned proposed the applicant as a person eligible and suitable for membership of the Institute and make the following statements in support of the applicant. (Proposers and Seconders must be Fellows or Members of IMCB with more than two years membership).</p>
                                    <div class="row">
                                        <div class="col-md-12 form-group">
                                            <div class="col-md-1">
                                                <label>Prosper</label>
                                            </div>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" name="prosper" id="" placeholder="prosper">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12 form-group">
                                            <div class="col-md-12 form-group">
                                                <label>Signature</label>
                                                <div class="col-md-4">
                                                    <input class=" " type="file" name="prosper_signature" id="prosper_file" placeholder="">
                                                    <span id="invalid_prosperFile" class="text-danger font-weight-bold"></span>
                                                </div>
                                                <label class="">Membership No</label>
                                                <div class="col-md-4">
                                                    <input class="form-control" type="number" name="membership_no_1" placeholder="membership no">
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <label>Grade</label>
                                                <div class="col-md-5">
                                                    <input class="form-control" type="text" name="grade_1" placeholder="grade">
                                                </div>
                                                <label>Date</label>
                                                <div class="col-md-4">
                                                    <input class="form-control" id="prosper_date" type="date" name="date_1">
                                                    <span id="invalid_prosper" class="text-danger font-weight-bold"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12 form-group">
                                            <div class="col-md-1">
                                                <label>Seconder</label>
                                            </div>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" name="seconder" id="" placeholder="seconder">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12 form-group">
                                            <div class="col-md-12 form-group">
                                                <label>Signature</label>
                                                <div class="col-md-4">
                                                    <input class=" " id="seconder_file" type="file" name="seconder_signature" placeholder="">
                                                    <span id="invalid_seconderFile" class="text-danger font-weight-bold"></span>
                                                </div>
                                                <label class="">Membership No</label>
                                                <div class="col-md-4">
                                                    <input class="form-control" type="number" name="membership_no_2" placeholder="membership no">
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <label>Grade</label>
                                                <div class="col-md-5">
                                                    <input class="form-control" type="text" name="grade_2" placeholder="grade">
                                                </div>
                                                <label>Date</label>
                                                <div class="col-md-4">
                                                    <input class="form-control" name="date_2" id="seconder_date" type="date" placeholder="date">
                                                    <span id="invalid_seconder" class="text-danger font-weight-bold"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>



                                    <h4><u>CLIENT REFERENCES</u></h4>
                                    <p>I offer the three following names, address and telephone numbers of client referees who may be contacted to confirm my personal and professional standing.</p>
                                    <div class="  ">
                                        <div class="edu">
                                            <div class="">
                                                <!-- <a class="btn btn-info pull-right mr-15 name_box24" id="addAddress">
                                                    Add<i class="zmdi zmdi-plus-circle" style="color: rgb(241, 17, 17);"></i>
                                                </a> -->
                                                <div class="col-md-12 mt-10 expense-sidebar-left">
                                                    <div class="single-item" id="triple form-group">
                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label for="expense_typeIDs" class="control-label mb-10 ">
                                                                        Name</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label for="itemUnitPrices" class="control-label mb-10">
                                                                        Address </label>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label for="" class="control-label mb-10">
                                                                        Phone</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row count" id="item">
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <input type="text" class="form-control" name="name_j[]" placeholder="name" required>
                                                                </div>
                                                            </div>
                                                            <!--                                                    <div class="col-md-2 hidden">-->
                                                            <!--                                                        -->
                                                            <!--                                                    </div>-->
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <input type="text" step="any" name="address_j[]" id="address1" class="form-control" placeholder="address" required>
                                                                </div>
                                                            </div>
                                                            <!--                                                    <div class="col-md-1">-->
                                                            <!--                                                        <div class="form-group">-->
                                                            <!--                                                        </div>-->
                                                            <!--                                                    </div>-->
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <input type="tel" name="phone_j[]" id="phone1" class="form-control" placeholder="01234567890" pattern="[0-9]{11}" required>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row count" id="item">
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <input type="text" class="form-control" name="name_j[]" placeholder="name" required>
                                                                </div>
                                                            </div>
                                                            <!--                                                    <div class="col-md-2 hidden">-->
                                                            <!--                                                        -->
                                                            <!--                                                    </div>-->
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <input type="text" step="any" name="address_j[]" id="address1" class="form-control" placeholder="address" required>
                                                                </div>
                                                            </div>
                                                            <!--                                                    <div class="col-md-1">-->
                                                            <!--                                                        <div class="form-group">-->
                                                            <!--                                                        </div>-->
                                                            <!--                                                    </div>-->
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <input type="tel" name="phone_j[]" id="phone1" class="form-control" placeholder="01234567890" pattern="[0-9]{11}" required>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row count" id="item">
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <input type="text" class="form-control" name="name_j[]" placeholder="name" required>
                                                                </div>
                                                            </div>
                                                            <!--                                                    <div class="col-md-2 hidden">-->
                                                            <!--                                                        -->
                                                            <!--                                                    </div>-->
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <input type="text" step="any" name="address_j[]" id="address1" class="form-control" placeholder="address" required>
                                                                </div>
                                                            </div>
                                                            <!--                                                    <div class="col-md-1">-->
                                                            <!--                                                        <div class="form-group">-->
                                                            <!--                                                        </div>-->
                                                            <!--                                                    </div>-->
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <input type="tel" name="phone_j[]" id="phone1" class="form-control" placeholder="01234567890" pattern="[0-9]{11}" required>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div id="more-items"></div>
                                                        <div class="clearfix"></div>
                                                    </div>
                                                    <br>
                                                </div>
                                            </div>
                                        </div>
                                    </div>




                                    <h4><u>DECLARATION</u></h4>
                                    <p>I hereby agree that, in the event of my admission to membership of the Institute of Management Consultants Bangladesh, I will be governed by the Memorandum and Articles of Association of the Institute and will at all times, abide by the Code of Professional Conduct of the Institute which I have red and understood.</p>
                                    <p>I confirm that all statements made in this Application for Membership are correct and that I have included all matters concerning my education, qualifications and experience that I consider relevant to this application</p>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="no_float">
                                                <input type="radio" id="" name="member_1" value="not_previous_member" required>
                                                <label>I have not previously been a member of the Institute</label>
                                                <input type="radio" id="" name="member_1" value="previous_member">
                                                <label>I was previously a member of the Institute</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-2">
                                                <label>From</label>
                                            </div>
                                            <div class="col-md-2 form-group">
                                                <select name="month_2" class="form-control">
                                                    <option style="font-weight:bold;" value="">month</option>
                                                    <option style="font-weight:bold;" value="january">january</option>
                                                    <option style="font-weight:bold;" value="february">february</option>
                                                    <option style="font-weight:bold;" value="march">march</option>
                                                    <option style="font-weight:bold;" value="april">april</option>
                                                    <option style="font-weight:bold;" value="may">may</option>
                                                    <option style="font-weight:bold;" value="june">june</option>
                                                    <option style="font-weight:bold;" value="july">july</option>
                                                    <option style="font-weight:bold;" value="august">august</option>
                                                    <option style="font-weight:bold;" value="september">september</option>
                                                    <option style="font-weight:bold;" value="october">october</option>
                                                    <option style="font-weight:bold;" value="november">november</option>
                                                    <option style="font-weight:bold;" value="december">december</option>

                                                </select>
                                                <!-- <input class="form-control" type="text" placeholder="month" name="month_2"> -->
                                            </div>
                                            <div class="col-md-2">
                                                <input class="form-control" type="number" placeholder="year" name="year_2" pattern="[0-9]{4}">
                                            </div>
                                            <div class="col-md-2">
                                                <label>To</label>
                                            </div>
                                            <div class="col-md-2 form-group">
                                                <select name="month_3" class="form-control">
                                                    <option style="font-weight:bold;" value="">month</option>
                                                    <option style="font-weight:bold;" value="january">january</option>
                                                    <option style="font-weight:bold;" value="february">february</option>
                                                    <option style="font-weight:bold;" value="march">march</option>
                                                    <option style="font-weight:bold;" value="april">april</option>
                                                    <option style="font-weight:bold;" value="may">may</option>
                                                    <option style="font-weight:bold;" value="june">june</option>
                                                    <option style="font-weight:bold;" value="july">july</option>
                                                    <option style="font-weight:bold;" value="august">august</option>
                                                    <option style="font-weight:bold;" value="september">september</option>
                                                    <option style="font-weight:bold;" value="october">october</option>
                                                    <option style="font-weight:bold;" value="november">november</option>
                                                    <option style="font-weight:bold;" value="december">december</option>

                                                </select>
                                                <!-- <input class="form-control" type="text" placeholder="month" name="month_3"> -->
                                            </div>
                                            <div class="col-md-2">
                                                <input class="form-control" type="number" placeholder="year" name="year_3" pattern="[0-9]{4}">
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-3">
                                                <label>Applicant’s Signature</label>
                                            </div>
                                            <div class="col-md-3">
                                                <input class="form-control-file app" type="file" name="app_signature" id="app_signature" value="" placeholder="" required>
                                                <span id="invalid_appSignature" class="text-danger font-weight-bold"></span>
                                            </div>
                                            <div class="col-md-1">
                                                <label>Date</label>
                                            </div>
                                            <div class="col-md-2">
                                                <input class="form-control" type="date" name="date_3" id="last_date" value="" required>
                                                <span id="invalid_lastDate" class="text-danger font-weight-bold"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12" style="text-align: right;">
                                            <input type="submit" class="btn btn-success" name="submit" value="submit">
                                        </div>
                                    </div>

                                    <br>
                                    <h4 style="text-align:center;"><u>MEMBERSHIP APPLICATION FEES & PROCESS</u></h4>
                                    <hr style="border-top: 1px solid black">
                                    <ol>
                                        <li>
                                            <p>FEES</p>
                                        </li>
                                        <ol type="a">
                                            <li>
                                                <p>Application Form & Processing Fee: BDT 500.00 per (For Corporate Member: BDT 1,000)</p>
                                            </li>
                                            <li>
                                                <p>Registration Fee: All grades: BDT 3,000.00 (For Corporate Member: BDT 10,000.00)</p>
                                            </li>
                                            <li>
                                                <p>Annual Subscriptions:</p>
                                            </li>
                                            <ol type="i">
                                                <li>
                                                    <p>Affiliate: BDT 2,000.00</p>
                                                </li>
                                                <li>
                                                    <p>Associate Member (AMIMCB): BD 2,000.00</p>
                                                </li>
                                                <li>
                                                    <p>Full Member (MIMCB): BDT 3,000.00</p>
                                                </li>
                                                <li>
                                                    <p>Fellow (FIMCB): BDT 3,000.00</p>
                                                </li>
                                                <li>
                                                    <p>Corporate Member: BDT 10,000.00</p>
                                                </li>
                                            </ol>
                                        </ol>
                                        <li>
                                            <p>APPLICATION PROCESS</p>
                                        </li>
                                        <p>Applications for all membership grades should submit the following documents/items to IMC Bangladesh:</p>
                                        <ol type="a">
                                            <li>
                                                <p>Application Form fully completed</p>
                                            </li>
                                            <li>
                                                <p>Three (3) copies of passport size photograph</p>
                                            </li>
                                            <li>
                                                <p>Curriculum Vitae including full details of education, non-consulting employment and full time management consulting employment</p>
                                            </li>
                                            <li>
                                                <p>Photocopies of degree/professional qualification certificates</p>
                                            </li>
                                            <li>
                                                <p>Application Form & Processing Fee of Tk. 500.00 (non-refundable)</p>
                                            </li>
                                        </ol>
                                        <li>
                                            <p>Membership Committee will contact the applicant to arrange a personal interviewM</p>
                                        </li>
                                        <li>
                                            <p>Membership Committee will perform client reference checks</p>
                                        </li>
                                        <li>
                                            <p>Recommendation forwarded to Executive Committee for approval</p>
                                        </li>
                                        <li>
                                            <p>A letter will be sent to the new member from the President, IMC Bangladesh after approval of the membership</p>
                                        </li>
                                        <li>
                                            <p>New members will be invoiced for the Registration Fee after approval of the membership</p>
                                        </li>
                                    </ol>
                                    <p style="font-size:15px; font-weight:bold; text-align:centre">House B-114 (3rd Floor), Road 7, New DOHS, Mohakhali, Dhaka-1206, Tel: +880 2 9883281, E-mail: info.imcb@gmail.com</p>

                                </form>

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
                            IMCB celebrates the unique perspectives of our community of members, staff and those served by our society. Collectively, we are the voice of quality, and we increase the use and impact of quality in response to the diverse needs in the world.
                        </p>
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

    <?php
    include_once('../includes/footer.php');


    ?>
    <script>
        $("form").submit(function(e) {
            var dob = document.getElementById('dob').value;
            // var date_of_birth = document.getElementById('date_of_birth');
            var today = new Date();
            var today_final = new Date(dob);
            console.log(today);
            console.log(today_final);
            // var days = Math.abs(today.getDate() - today_final.getDate());
            // days = days+(Math.abs(today.getMonth()+1)-(today_final.getMonth()+1))*30;
            // days = days+(Math.abs(today.getFullYear()-today_final.getFullYear()))*365;
            days = ((today.getTime() - today_final.getTime()) / (1000 * 60 * 60 * 24));
            difference = Math.floor(days / 365);
            console.log(days);
            console.log(difference);
            if (difference < 18) {
                var tmp = document.getElementById('date_of_birth');
                tmp.innerHTML = "Age must be up to 18...";
                $("#dob").css("border-color", "red");
                $("#dob").focus();
                //  $("#dob").attr("has-danger","true");
                //  $("#dob").attr("has-error","error");
                e.preventDefault();
            }
            var pros_date = document.getElementById('prosper_date').value;
            console.log(pros_date);
            var tod = new Date();
            var pro_date = new Date(pros_date);
            console.log(tod);
            console.log(pro_date);
            var pro_day = tod.getTime() - pro_date.getTime();
            console.log(pro_day / (1000 * 60 * 60 * 24));
            if (pro_day < 0) {
                var tmp1 = document.getElementById('invalid_prosper');
                tmp1.innerHTML = "Invalid Date";
                $("#prosper_date").css("border-color", "red");
                $("#prosper_date").focus();
                e.preventDefault();
            }
            var seconder_date = document.getElementById('seconder_date').value;
            console.log(seconder_date);
            var tod1 = new Date();
            var second_date = new Date(seconder_date);
            console.log(tod1);
            console.log(second_date);
            var second_day = tod1.getTime() - second_date.getTime();
            if (second_day < 0) {
                var tmp2 = document.getElementById('invalid_seconder');
                tmp2.innerHTML = "Invalid Date";
                $("#seconder_date").css("border-color", "red");
                $("#seconder_date").focus();
                e.preventDefault();
            }

            var last_date = document.getElementById('last_date').value;
            var tod2 = new Date();
            var last_date1 = new Date(last_date);
            console.log(tod2);
            console.log(last_date1);
            var last_day = tod2.getTime() - last_date1.getTime();
            if (last_day < 0) {
                var tmp3 = document.getElementById('invalid_lastDate');
                tmp3.innerHTML = "Invalid Date";
                $("#last_date").css("border-color", "red");
                $("#last_date").focus();
                e.preventDefault();
            }
            var image = document.getElementById('prosper_file').value;
            if (image != '') {
                var cheking = image.toLowerCase();
                if (!cheking.match(/(\.jpg|\.png|\.jpeg|\.svg|\.SVG|\.JPEG|\.PNG|\.JPG)$/)) {
                    var tmp4 = document.getElementById('invalid_prosperFile');
                    tmp4.innerHTML = "file support only jpg png jpeg svg format";
                    $("#invalid_prosperFile").focus();
                    $("#invalid_prosperFile").css("border-color", "red");
                    e.preventDefault();
                }
            }
            var image = document.getElementById('seconder_file').value;
            if (image != '') {
                var cheking = image.toLowerCase();
                if (!cheking.match(/(\.jpg|\.png|\.jpeg|\.svg|\.SVG|\.JPEG|\.PNG|\.JPG)$/)) {
                    var tmp5 = document.getElementById('invalid_seconderFile');
                    tmp5.innerHTML = "file support only jpg png jpeg svg format";
                    $("#invalid_seconderFile").focus();
                    $("#invalid_seconderFile").css("border-color", "red");
                    e.preventDefault();
                }
            }
            var image = document.getElementById('app_signature').value;
            if (image != '') {
                var cheking = image.toLowerCase();
                if (!cheking.match(/(\.jpg|\.png|\.jpeg|\.svg|\.SVG|\.JPEG|\.PNG|\.JPG)$/)) {
                    var tmp4 = document.getElementById('invalid_appSignature');
                    tmp4.innerHTML = "file support only jpg png jpeg svg format";
                    $("#invalid_prosperFile").focus();
                    $("#invalid_appSignature").css("border-color", "red");
                    e.preventDefault();
                }
            }

        });



        var i = 1;
        $("#addItem").click(function() {
            i++;
            var more_files = document.getElementById('single')
            var create_fields = document.createElement("div");
            var cloned = $('.expense_type_ids').html();

            create_fields.innerHTML = '<div class="" id="item' + i + '">' +
                '<div class="row">' +
                '<div class="col-md-4">' +
                '<div class="form-group">' +
                '<input type="text" class="form-control" placeholder="university/college" name="university[]">' +
                '</div>' +
                '</div>' +
                '<div class="col-md-4"> <div class="form-group"><input type="text" step="any" name="qualification[]" id="itemUnitPrice' + i + '" class="form-control" placeholder="qualification obtained"> </div> </div>' +

                '<div class="col-md-4"> <div class="form-group"><input name="qual_year[]" id="remarks' + i + '" class="form-control" placeholder="year" type="number" pattern="[0-9]{4}" required></div></div></div>'
            // '<div class="col-md-2"><div class="form-group">' + cloned + '</div></div>' +
            more_files.appendChild(create_fields);
        });
        var i = 1;
        $("#addEmployee").click(function() {
            i++;
            var more_files = document.getElementById('double')
            var create_fields = document.createElement("div");
            var cloned = $('.expense_type_ids').html();

            create_fields.innerHTML = '<div class="" id="item2' + i + '">' +
                '<div class="row">' +
                '<div class="col-md-4">' +
                '<div class="form-group">' +
                '<input type="text" class="form-control" placeholder="designation" name="employer_j[]">' +
                '</div>' +
                '</div>' +
                '<div class="col-md-4">' +
                '<div class="col-md-12">' +
                '<div class="form-group col-md-6">' +
                '<select name="month_j1[]" class="form-control">' +
                '<option style="font-weight:bold;" value="">month</option>' +
                '<option style="font-weight:bold;" value="january">january</option>' +
                '<option style="font-weight:bold;" value="february">february</option>' +
                '<option style="font-weight:bold;" value="march">march</option>' +
                '<option style="font-weight:bold;" value="april">april</option>' +
                '<option style="font-weight:bold;" value="may">may</option>' +
                '<option style="font-weight:bold;" value="june">june</option>' +
                '<option style="font-weight:bold;" value="july">july</option>' +
                '<option style="font-weight:bold;" value="august">august</option>' +
                '<option style="font-weight:bold;" value="september">september</option>' +
                '<option style="font-weight:bold;" value="october">october</option>' +
                '<option style="font-weight:bold;" value="november">november</option>' +
                '<option style="font-weight:bold;" value="december">december</option>' +

                '</select>' +
                // '<input type="text" step="any" name="month_j1[]" id="itemUnitPrice-1' + i + '" class="form-control" placeholder="month">' +
                '</div>' +
                '<div class="form-group col-md-6">' +
                '<input type="number" step="any" name="year_j1[]" id="itemUnitPrice-2' + i + '" class="form-control" placeholder="year" pattern="[0-9]{4}">' +
                '</div>' +
                '</div>' +
                '</div>' +

                '<div class="col-md-4">' +
                '<div class="col-md-12">' +
                '<div class="form-group col-md-6">' +
                '<select name="month_j2[]" class="form-control">' +
                '<option style="font-weight:bold;" value="">month</option>' +
                '<option style="font-weight:bold;" value="january">january</option>' +
                '<option style="font-weight:bold;" value="february">february</option>' +
                '<option style="font-weight:bold;" value="march">march</option>' +
                '<option style="font-weight:bold;" value="april">april</option>' +
                '<option style="font-weight:bold;" value="may">may</option>' +
                '<option style="font-weight:bold;" value="june">june</option>' +
                '<option style="font-weight:bold;" value="july">july</option>' +
                '<option style="font-weight:bold;" value="august">august</option>' +
                '<option style="font-weight:bold;" value="september">september</option>' +
                '<option style="font-weight:bold;" value="october">october</option>' +
                '<option style="font-weight:bold;" value="november">november</option>' +
                '<option style="font-weight:bold;" value="december">december</option>' +

                '</select>' +

                // '<input type="text" step="any" name="month_j2[]" id="itemUnitPrice-3' + i + '" class="form-control" placeholder="month">' +
                '</div>' +
                '<div class="form-group col-md-6">' +
                '<input type="number" step="any" name="year_j2[]" id="itemUnitPrice1-4' + i + '" class="form-control" placeholder="year" pattern="[0-9]{4}" required>' +
                '</div>' +
                '</div>' +
                '</div>' +
                '<div class="col-md-12 form-group">' +
                '<textarea class="form-control" id="itemUnitPrice1-5' + i + '" name="position_j[]" rows="1" cols="10" placeholder="position and summary of major duties"></textarea>' +
                '</div>'
            more_files.appendChild(create_fields);
        });






        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }

        // var i = 1;
        // $("#addAddress").click(function() {
        //     var numItems = $('.count').length;
        //     if (numItems < 3) {
        //         i++;
        //         var more_files = document.getElementById('triple')
        //         var create_fields = document.createElement("div");
        //         var cloned = $('.expense_type_ids').html();

        //         create_fields.innerHTML = '<div class="count" id="item' + i + '">' +
        //             '<div class="row">' +
        //             '<div class="col-md-4">' +
        //             '<div class="form-group">' +
        //             '<input type="text" class="form-control" placeholder="name" name="name_j[]">' +
        //             '</div>' +
        //             '</div>' +
        //             '<div class="col-md-4"> <div class="form-group"><input type="text" step="any" name="address_j[]" id="address1' + i + '" class="form-control" placeholder="address"> </div> </div>' +

        //             '<div class="col-md-4"> <div class="form-group"><input type="tel" name="phone_j[]" id="phone1' + i + '" class="form-control" placeholder="phone"></div></div></div>'
        //         // '<div class="col-md-2"><div class="form-group">' + cloned + '</div></div>' +
        //         more_files.appendChild(create_fields);
        //     }
        // });


        $('body').jpreLoader({
            splashID: "#jSplash",
            loaderVPos: '0%',
            autoClose: true,
        });

        /*=========Place Google Tracker Code here===========*/
    </script>
</body>

</html>