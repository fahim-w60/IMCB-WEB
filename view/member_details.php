<?php
include_once '../vendor/autoload.php';
\App\Session::init();


if (!(\App\Session::get('login') and \App\Session::get('user_type_id') == 1)) {

    header('location:../login.php');
}


///\App\Session::set('location', '../index.php');

$profile = new \App\User\User();

$profile_id = \App\Session::get('profile_id');



//getAllprofilelists($profile_type_id,,$companyID,$applicationID,$status)
$user_lists = $profile->getAllprofilelists(100);
$profile_info = $profile->getprofileinfoByID($_GET['id']);
$member_type = $profile->getMemberTypeByID($profile_info->contact_category_type_id);
$member_info = $profile->getMembershipInfo($_GET['id']);
$address_info = $profile->getAddress($_GET['id']);


include_once('../view/includes/header.php');

?>

<div class="page-wrapper">
    <div class="container-fluid">
        <!-- Title -->
        <div class="row heading-bg">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h5 class="txt-dark">Show Members</h5>
            </div>
            <!-- Breadcrumb -->
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="view/index.php">Dashboard</a></li>
                </ol>
            </div>
            <!-- /Breadcrumb -->
        </div>
        <!-- /Title -->

        <!-- Row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default card-view">
                    <div class="panel panel-default card-view">
                        <div class="panel-heading">
                            <div class="pull-left">
                                <h5 class="txt-dark">Member Details</h5>
                            </div>

                            <div class="clearfix"></div>
                        </div>

                        <div class="panel-wrapper collapse in">
                            <div class="panel-body">


                                <table class="table table-striped table-bordered">
                                    <tbody>
                                        <tr>
                                            <th class="success">Full Name</th>
                                            <td>
                                                <?php echo $profile_info->FullName; ?>
                                            </td>
                                            <th class="success">Display Name</th>
                                            <td>
                                                <?php echo $profile_info->DisplayName; ?>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="success">Member Type</th>
                                            <td>
                                                <?php echo $member_type->contact_category_type; ?>
                                            </td>
                                            <th class="success">Company Name </th>
                                            <td>
                                                <?php echo $member_info->company_name; ?>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="success">Number Of Employees</th>
                                            <td>
                                                <?php echo $member_info->total_employees; ?>
                                            </td>
                                            <th class="success">Position Title </th>
                                            <td>
                                                <?php echo $profile_info->Title; ?>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="success">Business Address</th>
                                            <td>


                                            </td>
                                            <th class="success">Private Address</th>
                                            <td>

                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="success">Business Address Phone</th>
                                            <td>

                                            </td>
                                            <th class="success">Private Address Phone</th>
                                            <td>

                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="success">Business Address Fax</th>
                                            <td>

                                            </td>
                                            <th class="success">Private Address Fax</th>
                                            <td>

                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="success">Mobile</th>
                                            <td>
                                                <?php echo  $profile_info->PrimaryMobile; ?>
                                            </td>
                                            <th class="success">Email </th>
                                            <td>
                                                <?php echo  $profile_info->Email; ?>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="success">DateOfBirth</th>
                                            <td>
                                                <?php echo  $profile_info->DateOfBirth; ?>
                                            </td>
                                            <th class="success">Member Professional Body</th>
                                            <td>
                                                <?php echo  $member_info->member_professional_body; ?>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- row-->



        <?php
        include_once('../view/includes/footer.php');
        ?>


        <script>
            /* function toggleClientStatus(clientID, clientStatus){
            var message = "";
            if (clientStatus == 0){
                message = "Do you really want to remove client from Active Status ?";
                //alert("hmm");
            }else{
                message = "Do you really want to change client Status to Active ?";
            }

            alertify.confirm('Confirm', message, function(){
                    $.ajax({
                        type:'post',
                        url:'view/ajax-files/activestatus.php',
                        data:{
                            'clientID':clientID,
                            'clientStatus':clientStatus
                        },
                        success: function(data){
                            alertify.set('notifier','position', 'top-center');
                            if (data == 'ok'){
                                alertify.success('Client status has changed !!');
                            }
                            //window.location.reload();
                        },
                        
                    })
                },

              function () {}
                
            );
        }
    */

            $('#zctb').dataTable({
                language: {
                    searchPlaceholder: "Search"
                }
            })




            $('.change_status').on('change', function() {
                var id = $(this).attr('data-id');
                $.ajax({
                    type: 'post',
                    url: 'view/ajax-request-files/user_status.php',
                    data: {
                        'profile_id': id,
                        'change_status': 1
                    },
                    success: function(data) {
                        alertify.success("Status successfully changed !!")
                        // setTimeout(function() {
                        //     window.location.reload()
                        // }, 2000)
                    },
                })
            })
        </script>