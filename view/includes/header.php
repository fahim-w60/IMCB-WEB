<?php
//include_once '../../vendor/autoload.php';
\App\Session::init();
//\App\Session::checkLoginSession();
$levelSettings = new \App\level\Level();

$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$hostURL = $protocol . $_SERVER['HTTP_HOST'] . '/';
$url = $hostURL;
if ($hostURL == 'http://localhost/') {
    $url = $hostURL . explode("/", $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'])[1] . '/';
}


use App\Setting\Setting;

$columnuserName = null;
$value = null;

$allsettings = Setting::showSetting($columnuserName, $value);


//var_dump($allsettings[0]['siteLogo']);


?>
<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from hencework.com/theme/doodle/full-width-light/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 06 Nov 2018 08:10:40 GMT -->

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>Institute of Management Consultants Bangladesh</title>
    <meta name="description" content="Doodle is a Dashboard & Admin Site Responsive Template by hencework." />
    <meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Doodle Admin, Doodleadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
    <meta name="author" content="hencework" />

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <base href="<?php echo $url ?>">

    <link href="files/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <!-- Morris Charts CSS -->
    <link href="files/bower_components/morris.js/morris.css" rel="stylesheet" type="text/css" />

    <!-- Data table CSS -->
    <link href="files/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />

    <link href="files/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">

    <link href="files/bower_components/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet" type="text/css">
    <link href="files/bower_components/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet" type="text/css">

    <link href="files/bower_components/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet" type="text/css">

    <!-- select2 CSS -->
    <link href="files/bower_components/select2/dist/css/select2.min.css" rel="stylesheet" type="text/css" />

    <!--    dropify-->
    <link href="files/bower_components/dropify/dist/css/dropify.min.css" rel="stylesheet" type="text/css" />

    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>

    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css'>


    <link href="dist/css/simple-line-icons.css" rel="stylesheet" type="text/css" />

    <!--    alertyfy-->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.2/build/css/alertify.min.css" />
    <!-- Default theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.2/build/css/themes/default.min.css" />

    <!-- bootstrap-tagsinput CSS -->
    <link href="files/bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" type="text/css" />

    <!-- Bootstrap Daterangepicker CSS -->
    <link href="files/bower_components/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />

    <!-- Summernote css -->
    <link rel="stylesheet" href="files/bower_components/summernote/dist/summernote.css" />



    <!-- Integration CSS -->

    <!-- Calendar CSS -->
    <link href="vendors/bower_components/fullcalendar/dist/fullcalendar.css" rel="stylesheet" type="text/css" />

    <!-- bootstrap-select CSS -->
    <link href="vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css" />

    <link href="dist/css/custom-final-visit-plan.css" rel="stylesheet" type="text/css">
    <link href="dist/css/visit-plan.css?ver=1.3" rel="stylesheet" type="text/css">

    <!-- Integration CSS -->



    <!-- Custom CSS -->
    <link href="dist/css/style.css?ver=1.4" rel="stylesheet" type="text/css">
    <link href="dist/css/custom-css.css?ver=1.2" rel="stylesheet" type="text/css">



    <style>

    </style>
</head>

<?php
$body_class = '';
if (\App\Session::get('default_languageID') == 1) { // 1 =  English
    $body_class = 'english';
} elseif (\App\Session::get('default_languageID') == 2) { // 2 = Bangla
    $body_class = 'bangla';
} else {
    $body_class = 'english'; // Default = English
}
?>


<body id="<?php echo $body_class ?>">

    <!-- /Preloader -->

    <div class="wrapper theme-1-active pimary-color-red slide-nav-toggle">
        <!-- Top Menu Items -->
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="mobile-only-brand pull-left">
                <div class="nav-header pull-left">
                    <div class="logo-wrap">
                        <a href="view/">
                            <?php
                            //$store=new \App\store\Store();
                            //$logo=$store->getLogo(\App\Session::get('storeID'));
                            ?>
                            <img class="brand-img" src="image_directory/site/<?php echo $allsettings[0]['siteLogo']; ?>" alt="brand" />
                        </a>
                    </div>
                </div>
                <a id="toggle_nav_btn" class="toggle-left-nav-btn inline-block ml-20 pull-left" href="javascript:void(0);"><i class="zmdi zmdi-menu"></i></a>
                <a id="toggle_mobile_search" data-toggle="collapse" data-target="#search_form" class="mobile-only-view" href="javascript:void(0);"><i class="zmdi zmdi-search"></i></a>
                <a id="toggle_mobile_nav" class="mobile-only-view" href="javascript:void(0);"><i class="zmdi zmdi-more"></i></a>
            </div>
            <div id="mobile_only_nav" class="mobile-only-nav pull-right" style="overflow: visible">
                <ul class="nav navbar-right top-nav pull-right">


                    <?php

                    if (\App\Session::get('login') == false) { ?>

                        <li class="dropdown auth-drp">
                            <a href="" class="dropdown-toggle pr-0" data-toggle="dropdown"><i class="zmdi zmdi-account txt-success"></i> </a>
                            <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">

                                <li>
                                    <!--<a  href="javascript:void(0)" id="logout" onclick="$('#logoutForm').submit()"><i class="zmdi zmdi-power"></i><span>Log Out</span></a>-->
                                    <a href="login.php" id="login"><i class="zmdi zmdi-power"></i><span>Log in</span></a>

                                </li>
                                <!--<form action="" id="logoutForm" method="post">-->
                                <!--    <input type="hidden" name="logout">-->
                                <!--</form>-->
                            </ul>
                        </li>

                    <?php
                    } else {
                    ?>

                        <li class="dropdown auth-drp">
                            <a href="logout.php" class="dropdown-toggle pr-0" data-toggle="dropdown"><i class="zmdi zmdi-account txt-success"></i> </a>
                            <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">

                                <li>
                                    <!--<a  href="javascript:void(0)" id="logout" onclick="$('#logoutForm').submit()"><i class="zmdi zmdi-power"></i><span>Log Out</span></a>-->
                                    <a href="logout.php" id="logout"><i class="zmdi zmdi-power"></i><span>Log Out</span></a>
                                </li>
                                <!--<form action="" id="logoutForm" method="post">-->
                                <!--    <input type="hidden" name="logout">-->
                                <!--</form>-->
                            </ul>
                        </li>
                    <?php  } ?>
                </ul>
            </div>
        </nav>
        <!-- /Top Menu Items -->

        <!-- Left Sidebar Menu -->
        <div class="fixed-sidebar-left">
            <ul class="nav navbar-nav side-nav nicescroll-bar">
                <li class="navigation-header">
                    <span><?php echo $levelSettings->levelName(1); ?></span>
                    <i class="zmdi zmdi-more"></i>
                </li>
                <li>
                    <a class="active" href="view/" data-toggle="collapse" data-target="#dashboard_dr">
                        <div class="pull-left">
                            <i class="zmdi zmdi-landscape mr-20">
                            </i>
                            Dashboard
                        </div>
                        <div class="pull-right">

                        </div>
                        <div class="clearfix">

                        </div>
                    </a>
                </li>

                <li>
                    <hr class="light-grey-hr mb-10" />
                </li>
                <li class="navigation-header">
                    <span><?php echo "Dashborad"; ?></span>
                    <i class="zmdi zmdi-more"></i>
                </li>

                <!-- 
            <li>
                <a href="javascript:void(0);" data-toggle="collapse" data-target="#clients"><div class="pull-left"><i class="zmdi zmdi-accounts-alt mr-20"></i><span class="right-nav-text">Clients</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
                <ul id="clients" class="collapse collapse-level-1 two-col-list">
                    
                    <li>
                         <a href="view/addclient.php">
                            <div class="pull-left"><span class="right-nav-text">Add Client</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                    <li>
                         <a href="view/showclient.php">
                            <div class="pull-left"><span class="right-nav-text">All Clients</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                      
                </ul>
            </li> -->


                <li>
                    <a href="javascript:void(0);" data-toggle="collapse" data-target="#appoint_mes">
                        <div class="pull-left"><i class="zmdi zmdi-file-text mr-20"></i><span class="right-nav-text">Members</span></div>
                        <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="appoint_mes" class="collapse collapse-level-1 two-col-list">


                        <li>
                            <a href="view/show_member.php">
                                <div class="pull-left"><span class="right-nav-text">Member Lists</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <!-- <li>
                         <a href="view/addnews.php">
                            <div class="pull-left"><span class="right-nav-text">Add Message</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li> -->

                    </ul>
                </li>

                <!-- <li>
                    <a href="javascript:void(0);" data-toggle="collapse" data-target="#partners">
                        <div class="pull-left"><i class="zmdi zmdi-accounts-list mr-20"></i><span class="right-nav-text">Partners</span></div>
                        <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="partners" class="collapse collapse-level-1 two-col-list">

                        <li>
                            <a href="view/addpartner.php">
                                <div class="pull-left"><span class="right-nav-text">Add Partner</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li>
                            <a href="view/showpartner.php">
                                <div class="pull-left"><span class="right-nav-text">All Partners</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li>

                    </ul>
                </li>

                <!--<li>
                <a href="javascript:void(0);" data-toggle="collapse" data-target="#services"><div class="pull-left"><i class="zmdi zmdi-view-list-alt mr-20"></i><span class="right-nav-text">Services</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
                <ul id="services" class="collapse collapse-level-1 two-col-list">
                    
                    <li>
                         <a href="view/addservice.php">
                            <div class="pull-left"><span class="right-nav-text">Add Service</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                    <li>
                         <a href="view/showservice.php">
                            <div class="pull-left"><span class="right-nav-text">All Services</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                      
                </ul>
            </li> -->

                <!-- <li>
                    <a href="javascript:void(0);" data-toggle="collapse" data-target="#newses">
                        <div class="pull-left"><i class="zmdi zmdi-file-text mr-20"></i><span class="right-nav-text">Messages</span></div>
                        <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="newses" class="collapse collapse-level-1 two-col-list">

                        <li>
                            <a href="view/addnewscategory.php">
                                <div class="pull-left"><span class="right-nav-text">Add Message Category</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li>
                            <a href="view/shownewscategory.php">
                                <div class="pull-left"><span class="right-nav-text">Message Categories</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li> -->
                <!-- <li>
                         <a href="view/shownews.php">
                            <div class="pull-left"><span class="right-nav-text">All News</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li> -->
                <!-- <li>
                         <a href="view/shownewspaginated1.php">
                            <div class="pull-left"><span class="right-nav-text">Paginated News</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li> -->
                <!-- <li>
                            <a href="view/shownewspaginated2.php">
                                <div class="pull-left"><span class="right-nav-text">Message Lists</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li>
                            <a href="view/addnews.php">
                                <div class="pull-left"><span class="right-nav-text">Add Message</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li> 

                    </ul>
                </li>-->

                <!-- <li>
                    <a href="javascript:void(0);" data-toggle="collapse" data-target="#profiles">
                        <div class="pull-left"><i class="zmdi zmdi-accounts-alt mr-20"></i><span class="right-nav-text">Profiles</span></div>
                        <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="profiles" class="collapse collapse-level-1 two-col-list">

                        <li>
                            <a href="view/adduserprofile.php">
                                <div class="pull-left"><span class="right-nav-text">Add Profile</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li>
                            <a href="view/showprofile.php">
                                <div class="pull-left"><span class="right-nav-text">Active Profiles</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li>
                            <a href="view/showtrashedprofile.php">
                                <div class="pull-left"><span class="right-nav-text">Trashed Profiles</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li>

                    </ul>
                </li> -->


                <!-- <li>
                    <a href="javascript:void(0);" data-toggle="collapse" data-target="#contact_mes">
                        <div class="pull-left"><i class="zmdi zmdi-file-text mr-20"></i><span class="right-nav-text">Contact Messages</span></div>
                        <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="contact_mes" class="collapse collapse-level-1 two-col-list">


                        <li>
                            <a href="view/showContactMessage.php">
                                <div class="pull-left"><span class="right-nav-text">Contact Message Lists</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <!-- <li>
                         <a href="view/addnews.php">
                            <div class="pull-left"><span class="right-nav-text">Add Message</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li> -->

            </ul>
            </li> -->


            <!-- <li>
                <a href="javascript:void(0);" data-toggle="collapse" data-target="#projects">
                    <div class="pull-left"><i class="zmdi zmdi-view-list-alt mr-20"></i><span class="right-nav-text">Video Gallery</span></div>
                    <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                    <div class="clearfix"></div>
                </a>
                <ul id="projects" class="collapse collapse-level-1 two-col-list">

                    <li>
                        <a href="view/addprojectcategory.php">
                            <div class="pull-left"><span class="right-nav-text">Add Video Category</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                    <li>
                        <a href="view/showprojectcategories.php">
                            <div class="pull-left"><span class="right-nav-text">Video Categories</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                    <li>
                        <a href="view/addproject.php">
                            <div class="pull-left"><span class="right-nav-text">Add New Video</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                    <li>
                        <a href="view/showproject.php">
                            <div class="pull-left"><span class="right-nav-text">All Videos</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>

                </ul>
            </li> -->

            <!-- <li>
                <a href="javascript:void(0);" data-toggle="collapse" data-target="#testimonial">
                    <div class="pull-left"><i class="zmdi zmdi-file-text mr-20"></i><span class="right-nav-text">Publications</span></div>
                    <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                    <div class="clearfix"></div>
                </a>
                <ul id="testimonial" class="collapse collapse-level-1 two-col-list">

                    <li>
                        <a href="view/addtestimonytype.php">
                            <div class="pull-left"><span class="right-nav-text">Add Publication Type</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                    <li>
                        <a href="view/showtestimonytype.php">
                            <div class="pull-left"><span class="right-nav-text">All Publication Types</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                    <li>
                        <a href="view/addtestimony.php">
                            <div class="pull-left"><span class="right-nav-text">Add Publication</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                    <li>
                        <a href="view/showtestimony.php">
                            <div class="pull-left"><span class="right-nav-text">All Publications</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>

                </ul>
            </li> -->

            <!-- <li>
                <a href="javascript:void(0);" data-toggle="collapse" data-target="#sliders">
                    <div class="pull-left"><i class="zmdi zmdi-view-list mr-20"></i><span class="right-nav-text">Sliders</span></div>
                    <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                    <div class="clearfix"></div>
                </a>
                <ul id="sliders" class="collapse collapse-level-1 two-col-list">

                    <li>
                        <a href="view/addslider.php">
                            <div class="pull-left"><span class="right-nav-text">Add Slider</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                    <li>
                        <a href="view/showslider.php">
                            <div class="pull-left"><span class="right-nav-text">All Slides</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>

                </ul>
            </li> -->

            <!-- <li>
                <a href="javascript:void(0);" data-toggle="collapse" data-target="#websetting">
                    <div class="pull-left"><i class="zmdi zmdi-view-list mr-20"></i><span class="right-nav-text">Manage Website</span></div>
                    <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                    <div class="clearfix"></div>
                </a>
                <ul id="websetting" class="collapse collapse-level-1 two-col-list">

                    <li>
                        <a href="view/add-settings.php">
                            <div class="pull-left"><span class="right-nav-text">Website Settings</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                </ul>
            </li> -->

            <!-- <li>
                <a href="javascript:void(0);" data-toggle="collapse" data-target="#comments"><div class="pull-left"><i class="zmdi zmdi-view-list mr-20"></i><span class="right-nav-text">Comments</span></div><div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
                <ul id="comments" class="collapse collapse-level-1 two-col-list">
                    
                    <li>
                         <a href="view/showcomment.php">
                            <div class="pull-left"><span class="right-nav-text">Show Comments</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                    
                      
                </ul>
            </li> -->

            <!-- <li>
                <a href="javascript:void(0);" data-toggle="collapse" data-target="#gallery">
                    <div class="pull-left"><i class="zmdi zmdi-view-list mr-20"></i><span class="right-nav-text">Galleries</span></div>
                    <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                    <div class="clearfix"></div>
                </a>
                <ul id="gallery" class="collapse collapse-level-1 two-col-list">

                    <li>
                        <a href="view/addgallerytype.php">
                            <div class="pull-left"><span class="right-nav-text">Add Gallery Type</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                    <li>
                        <a href="view/showgallerytype.php">
                            <div class="pull-left"><span class="right-nav-text">All Gallery Types</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                    <li>
                        <a href="view/addalbum.php">
                            <div class="pull-left"><span class="right-nav-text">Add Album</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                    <li>
                        <a href="view/showalbum.php">
                            <div class="pull-left"><span class="right-nav-text">All Albums</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>

                </ul>
            </li> -->





            </ul>
        </div>
        <!-- /Left Sidebar Menu -->
        <!-- Right Sidebar Backdrop -->
        <div class="right-sidebar-backdrop"></div>
        <!-- /Right Sidebar Backdrop -->