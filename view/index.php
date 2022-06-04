<?php
//ini_set("display_errors", 1);
include_once '../vendor/autoload.php';
\App\Session::init();




if (\App\Session::get('login') == false) {

  header('location:../login.php');
} else {

  if (\App\Session::get('user_type_id') != 1) {
    header('location:../login.php');
  }
}

// $useclass = new \App\useClass\UseClass();

// $helper = new \App\Helper();



// $news = new \App\news\News2();

$total_publication = 55;

//var_dump($total_publication->res);
$total_appointment = 12;

$total_mes = 11;

$total_user = 58;


$total_partner = 89;


include_once('./includes/header.php');


?>

<style>
  .fa-newspaper-o:before {
    content: "\f1ea";
    font-size: 60px;
    color: #fff;
  }
</style>

<div class="page-wrapper">
  <div class="container-fluid pt-25">



    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
      <a target="" href="#">
        <div class="panel panel-default card-view pa-0">
          <div class="panel-wrapper collapse in">
            <div class="panel-body pa-0">
              <div class="sm-data-box bg-blue">
                <div class="container-fluid">
                  <div class="row">
                    <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                      <span class="txt-light block counter"><span class="counter-anim">

                          <?php // echo $total_appointment; 
                          ?>


                        </span></span>
                      <!-- <span class="weight-500 uppercase-font txt-light block">Total Appointments</span> -->
                    </div>
                    <div class="col-xs-6 text-center  pl-0 pr-0 pt-25  data-wrap-right">

                      <i class="fa fa-newspaper-o" aria-hidden="true"></i>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>





    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
      <a target="" href="#">
        <div class="panel panel-default card-view pa-0">
          <div class="panel-wrapper collapse in">
            <div class="panel-body pa-0">
              <div class="sm-data-box bg-green">
                <div class="container-fluid">
                  <div class="row">
                    <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                      <span class="txt-light block counter"><span class="counter-anim">


                          <?php // echo $total_mes; 
                          ?>



                        </span></span>
                      <span class="weight-500 uppercase-font txt-light block">
                        <!-- Total Contact Messages -->
                      </span>
                    </div>
                    <div class="col-xs-6 text-center  pl-0 pr-0 pt-25  data-wrap-right">
                      <!--   <i class="zmdi zmdi-assignment-account txt-light data-right-rep-icon"></i> -->

                      <i class="zmdi zmdi-comment-outline txt-light data-right-rep-icon"></i>

                      <!--  <i class="zmdi zmdi-storage txt-light data-right-rep-icon"></i> -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>





    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
      <a target="" href="#">
        <div class="panel panel-default card-view pa-0">
          <div class="panel-wrapper collapse in">
            <div class="panel-body pa-0">
              <div class="sm-data-box bg-blue">
                <div class="container-fluid">
                  <div class="row">
                    <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                      <span class="txt-light block counter"><span class="counter-anim">

                          <?php // echo $total_user; 
                          ?>
                        </span></span>
                      <span class="weight-500 uppercase-font txt-light block">
                        <!-- Total Users -->
                      </span>
                    </div>
                    <div class="col-xs-6 text-center  pl-0 pr-0 pt-25  data-wrap-right">

                      <i class="zmdi zmdi-account-circle txt-light data-right-rep-icon"></i>



                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>



    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
      <a target="" href="#">
        <div class="panel panel-default card-view pa-0">
          <div class="panel-wrapper collapse in">
            <div class="panel-body pa-0">
              <div class="sm-data-box bg-yellow">
                <div class="container-fluid">
                  <div class="row">
                    <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                      <span class="txt-light block counter"><span class="counter-anim">
                          <?php // echo $total_partner; 
                          ?>

                        </span></span>
                      <span class="weight-500 uppercase-font txt-light block">
                        <!-- Total Partner -->
                      </span>
                    </div>
                    <div class="col-xs-6 text-center  pl-0 pr-0 pt-25  data-wrap-right">
                      <!-- <i class="zmdi zmdi-star-outline txt-light data-right-rep-icon"></i>  -->
                      <i class="zmdi zmdi-accounts-list-alt txt-light data-right-rep-icon"></i>
                      <!--                           <i class="fa fa-commenting-o" aria-hidden="true"></i>  -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>








    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
      <a href="">
        <div class="panel panel-default card-view pa-0">
          <div class="panel-wrapper collapse in">
            <div class="panel-body pa-0">
              <div class="sm-data-box bg-green">
                <div class="container-fluid">
                  <div class="row">
                    <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                      <span class="txt-light block counter"><span class="counter-anim">

                          <?php // echo $total_publication; 
                          ?>




                        </span></span>
                      <span class="weight-500 uppercase-font txt-light block">
                        <!-- Total Publication -->
                      </span>
                    </div>
                    <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                      <i class="fa fa-newspaper-o" aria-hidden="true"></i>
                      <!--   <i class="zmdi zmdi-file txt-light data-right-rep-icon"></i> -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </a>

    </div>


  </div>

</div>



<?php
include_once('./includes/footer.php');
?>