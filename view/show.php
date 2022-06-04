<?php



$member = $_POST['member_type'];

$name = $_POST['name_1'];
$preferred_name = $_POST['preferred_name'];
$dob = $_POST['dob'];
$company_name = $_POST['company_name'];
$no_employee = $_POST['noe'];
$position_title = $_POST['position_title'];
$business_address = $_POST['business_address'];
$business_address_phone = $_POST['phone_1'];
$business_address_fax = $_POST['fax_1'];
$private_address = $_POST['private_address'];
$private_address_phone = $_POST['phone_2'];
$private_address_fax = $_POST['fax_2'];
$mobile_1 = $_POST['mobile_1'];
$mail_1 = $_POST['mail_1'];
$send_mail_to = $_POST['address_type'];
$university = $_POST['university'];
$qualification = $_POST['qualification'];
$qual_year = $_POST['qual_year'];
$membership_body = $_POST['professional_body'];
$consultant = $_POST['consultant_1'];
$consultant_experience = $_POST['age'];
$management_consultant_month = $_POST['consulting_month'];
$management_consultant_year = $_POST['consulting_year'];
$major_specification_detail = $_POST['major_specification'];
$reason_of_membership = $_POST['applying_reason'];
$employment_designation = $_POST['employer_j'];
$employment_from_month = $_POST['month_j1'];
$employment_from_year = $_POST['year_j1'];
$employment_to_month = $_POST['month_j2'];
$employment_to_year = $_POST['year_j2'];
$employment_postion_and_summary = $_POST['position_j'];
$prosper = $_POST['prosper'];
//$prosper_signature = $_POST['signature_1'];
$prosper_membership_no = $_POST['membership_no_1'];
$prosper_grade = $_POST['grade_1'];
$prosper_date = $_POST['date_1'];
$seconder = $_POST['seconder'];
//$seconder_signature = $_POST['signature_2'];
$seconder_membership_no = $_POST['membership_no_2'];
$seconder_grade = $_POST['grade_2'];
$seconder_date = $_POST['date_2'];
$reference_name = $_POST['name_j'];
$reference_address = $_POST['address_j'];
$reference_phone = $_POST['phone_j'];
$previous_member = $_POST['member_1'];
$previous_member_from_month = $_POST['month_2'];
$previous_member_from_year = $_POST['year_2'];
$previous_member_to_month =  $_POST['month_3'];
$previous_member_to_year = $_POST['year_3'];
//$applicants_signature = $_POST['app_signature'];
$applicants_signature_date = $_POST['date_3'];

echo "<pre>";
print_r($_POST);
print_r($member);
print_r($name);
print_r($preferred_name);
print_r($dob);
print_r($company_name);
print_r($no_employee);
print_r($position_title);
print_r($business_address);
print_r($business_address_phone);
print_r($business_address_fax);
print_r($private_address);
print_r($private_address_phone);
print_r($private_address_fax);
print_r($mobile_1);
print_r($mail_1);
print_r($send_mail_to);
print_r($university);
print_r($qualification);
print_r($qual_year);
print_r($membership_body);
print_r($consultant);
print_r($consultant_experience);
print_r($management_consultant_month);
print_r($management_consultant_year);
print_r($major_specification_detail);
print_r($reason_of_membership);
print_r($employment_designation);
print_r($employment_from_month);
print_r($employment_from_year);
print_r($employment_to_month);
print_r($employment_to_year);
print_r($employment_postion_and_summary);
print_r($prosper);
//print_r($prosper_signature); 
print_r($prosper_membership_no);
print_r($prosper_grade);
print_r($prosper_date);
print_r($seconder);
//print_r($seconder_signature); 
print_r($seconder_membership_no);
print_r($seconder_grade);
print_r($seconder_date);
print_r($reference_name);
print_r($reference_address);
print_r($reference_phone);
print_r($previous_member);
print_r($previous_member_from_month);
print_r($previous_member_from_year);
print_r($previous_member_to_month);
print_r($previous_member_to_year);
//print_r($applicants_signature); 
print_r($applicants_signature_date);



$conn = new mysqli("localhost", "root", "", "imcb_website");

if ($conn->connect_error) {
    die('connection failed : ' . $conn->connect_error);
} else {

    $sql = "INSERT INTO u_user_profile(contact_category_type_id,FullName,DisplayName,DateOfBirth,Email,PrimaryMobile,Title) VALUES('$member','$name','$preferred_name','$dob','$mail_1','$mobile_1','$position_title')";

    if ($conn->query($sql)) {
        echo "record create successfully <br>";
    }
    $profile_id = mysqli_insert_id($conn);
    print_r($profile_id);

    $sql = " INSERT INTO  u_users(profile_id,user_name,	password) VALUES ('$profile_id','$mobile_1','123456')";
    if ($conn->query($sql)) {
        echo "record create in user table successfully<br>";
    }
    $entry_user_id =  mysqli_insert_id($conn);
    print_r($entry_user_id);
    $sql = "UPDATE u_user_profile SET EntryUserID = $entry_user_id WHERE (	profile_id='$profile_id')";
    var_dump($sql);
    if ($conn->query($sql)) {
        echo "EntryUserID created successfully <br>";
    }

    $sql = "INSERT INTO  u_user_address(address_type_id,profile_id,Address,phone,fax) VALUES ('6','$profile_id','$business_address','$business_address_phone','$business_address_fax')";
    if ($conn->query($sql)) {
        echo "Business address create successfully";
    }
    $sql = "INSERT INTO  u_user_address(address_type_id,profile_id,Address,phone,fax) VALUES ('7','$profile_id','$private_address','$private_address_phone','$private_address_fax')";
    if ($conn->query($sql)) {
        echo "Private address create successfully";
    }



    //<--------------------------------Members Education History--------------------------------->

    $number_of_field_education = count($university);
    echo $number_of_field_education . "<br>";
    for ($i = 0; $i < $number_of_field_education; $i++) {
        $sql = "INSERT INTO  members_education(profile_id,institute_name,degree_name,year,EntryUserID)               VALUES ('$profile_id','$university[$i]','$qualification[$i]','$qual_year[$i]','$entry_user_id')";
        var_dump($sql);
        if ($conn->query($sql)) {
            echo "Education field create successfully";
        }
    }



    // <------------------------------Members Employment History------------------------------------->
    $number_of_field_employment = count($employment_designation);
    //echo $number_of_field_employment."<br>";
    for ($i = 0; $i < $number_of_field_employment; $i++) {
        $sql = "INSERT INTO  members_employment(profile_id,employee_designation,from_month_year,to_month_year,about,EntryUserID)               VALUES ('$profile_id','$employment_designation[$i]','$employment_from_month[$i],$employment_from_year[$i]','$employment_to_month[$i],$employment_to_year[$i]','$employment_postion_and_summary[$i]','$entry_user_id')";
        var_dump($sql);
        if ($conn->query($sql)) {
            echo "Education field create successfully";
        }
    }







    //<--------------------------Icmb Membership Info----------------------------->

    var_dump($_FILES);
    $app_signature_name = "applicant_signature" . substr(md5(time()), 0, 10) . "-" . date('Y-m-d') . '.' . $_FILES["app_signature"]["name"];
    $app_signature_tname = $_FILES["app_signature"]["tmp_name"];
    $upload_dir = 'assets/img/applicant signature';
    move_uploaded_file($app_signature_tname, $upload_dir . '/' . $app_signature_name);

    $sql = "INSERT INTO  icmb_membership_info(profile_id,company_name,total_employees,send_mail_option,	member_professional_body,declaration_option,dec_from_month,dec_from_year,dec_to_month,dec_to_year,applicant_signature,dec_date,EntryUserID) VALUES ('$profile_id','$company_name','$no_employee','$send_mail_to ','$membership_body','$previous_member','$previous_member_from_month','$previous_member_from_year','$previous_member_to_month','$previous_member_to_year','$app_signature_name','$applicants_signature_date','$entry_user_id')";

    var_dump($sql);
    if ($conn->query($sql)) {
        echo "declaration field create successfully";
    }




    // <-------------------------------------member client reference------------------------------------------>
    for ($i = 0; $i < 3; $i++) {

        $sql = "INSERT INTO member_client_reference(profile_id,client_name,client_address,client_phone,EntryUserID) VALUES ('$profile_id','$reference_name[$i]','$reference_address[$i]','$reference_phone[$i]','$entry_user_id')";
        var_dump($sql);
        if ($conn->query($sql)) {
            echo "reference  field create successfully";
        }
    }




    // <-----------------------------------------prosper and seconder------------------------------------------------>


    $prosper_signature_name = "prosper_signature" . substr(md5(time()), 0, 10) . "-" . date('Y-m-d') . '.' . $_FILES["prosper_signature"]["name"];

    $prosper_signature_tname = $_FILES["prosper_signature"]["tmp_name"];
    $upload_dir_prosper = 'assets/img/proses signature';
    move_uploaded_file($prosper_signature_tname, $upload_dir_prosper . '/' . $prosper_signature_name);

    $seconder_signature_name = "seconder_signature" . substr(md5(time()), 0, 10) . "-" . date('Y-m-d') . '.' . $_FILES["seconder_signature"]["name"];
    $seconder_signature_tname = $_FILES["seconder_signature"]["tmp_name"];
    $upload_dir_seconder = 'assets/img/proses signature';
    move_uploaded_file($seconder_signature_tname, $upload_dir_seconder . '/' . $seconder_signature_name);


    $sql = "INSERT INTO membership_prosper(profile_id,	prosper,prosper_signature,	prosper_membership_no,	prosper_grade,prosper_date,seconder,seconder_signature,seconder_membership_no,seconder_grade,seconder_date,EntryUserID) VALUES('$profile_id','$prosper','$prosper_signature_name','$prosper_membership_no','$prosper_grade','$prosper_date','$seconder','$seconder_signature_name','$seconder_membership_no','$seconder_grade','$seconder_date','$entry_user_id')";
    var_dump($sql);
    if ($conn->query($sql)) {
        echo "prosper  field create successfully";
    }




    //  <-----------------------------------------------member consulting experience------------------------------->

    $sql = "INSERT INTO member_consulting_experience(profile_id,consultant_option,consultant_experience,consultant_month,consultant_year,major_specification,	applying_reason,entry_user_id) VALUES ('$profile_id','$consultant','$consultant_experience','$management_consultant_month','$management_consultant_year','$major_specification_detail','$reason_of_membership','$entry_user_id')";
    var_dump($sql);
    if ($conn->query($sql)) {
        echo "member consulting experience create successfully";
    }
}
