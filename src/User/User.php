<?php

namespace App\User;

use App\Session;
use App\DBConnection;
use PDO;
use Exception;

class User
{

    private $profile_type_id;
    private $user_type_id;
    private $member;
    private $name;
    private $preferred_name;
    private $dob;
    private $company_name;
    private $no_employee;
    private $position_title;
    private $password;
    private $business_address;
    private $business_address_phone;
    private $business_address_fax;
    private $private_address;
    private $private_address_phone;
    private $private_address_fax;
    private $mobile_1;
    private $mail_1;
    private $send_mail_to;
    private $university;
    private $qualification;
    private $qual_year;
    private $membership_body;
    private $consultant;
    private $consultant_experience;
    private $management_consultant_month;
    private $management_consultant_year;
    private $major_specification_detail;
    private $reason_of_membership;
    private $employment_designation;
    private $employment_from_month;
    private $employment_from_year;
    private $employment_to_month;
    private $employment_to_year;
    private $employment_postion_and_summary;
    private $prosper;
    private $prosper_signature;
    private $prosper_membership_no;
    private $prosper_grade;
    private $prosper_date;
    private $seconder;
    private $seconder_signature;
    private $seconder_membership_no;
    private $seconder_grade;
    private $seconder_date;
    private $reference_name;
    private $reference_address;
    private $reference_phone;
    private $previous_member;
    private $previous_member_from_month;
    private $previous_member_from_year;
    private $previous_member_to_month;
    private $previous_member_to_year;
    private $applicants_signature;
    private $applicants_signature_date;


    public function set($data = array())
    {
        if (array_key_exists('profile_type_id', $data)) {
            $this->profile_type_id = $data['profile_type_id'];
        }
        if (array_key_exists('user_type_id', $data)) {
            $this->user_type_id = $data['user_type_id'];
        }
        if (array_key_exists('member_type', $data)) {
            $this->member = $data['member_type'];
        }
        if (array_key_exists('name_1', $data)) {
            $this->name = $data['name_1'];
        }
        if (array_key_exists('preferred_name', $data)) {
            $this->preferred_name = $data['preferred_name'];
        }
        if (array_key_exists('dob', $data)) {
            $this->dob = $data['dob'];
        }
        if (array_key_exists('company_name', $data)) {
            $this->company_name = $data['company_name'];
        }
        if (array_key_exists('noe', $data)) {
            $this->no_employee = $data['noe'];
        }
        if (array_key_exists('position_title', $data)) {
            $this->position_title = $data['position_title'];
        }
        if (array_key_exists('business_address', $data)) {
            $this->business_address = $data['business_address'];
        }
        if (array_key_exists('phone_1', $data)) {
            $this->business_address_phone = $data['phone_1'];
        }
        if (array_key_exists('fax_1', $data)) {
            $this->business_address_fax = $data['fax_1'];
        }
        if (array_key_exists('private_address', $data)) {
            $this->private_address = $data['private_address'];
        }
        if (array_key_exists('phone_2', $data)) {
            $this->private_address_phone = $data['phone_2'];
        }
        if (array_key_exists('fax_2', $data)) {
            $this->private_address_fax = $data['fax_2'];
        }
        if (array_key_exists('mail_1', $data)) {
            $this->mail_1 = $data['mail_1'];
        }
        if (array_key_exists('mobile_1', $data)) {
            $this->mobile_1 = $data['mobile_1'];
        }
        if (array_key_exists('address_type', $data)) {
            $this->send_mail_to = $data['address_type'];
        }
        if (array_key_exists('university', $data)) {
            $this->university = $data['university'];
        }
        if (array_key_exists('qualification', $data)) {
            $this->qualification = $data['qualification'];
        }
        if (array_key_exists('qual_year', $data)) {
            $this->qual_year = $data['qual_year'];
        }
        if (array_key_exists('professional_body', $data)) {
            $this->membership_body = $data['professional_body'];
        }
        if (array_key_exists('consultant_1', $data)) {
            $this->consultant = $data['consultant_1'];
        }
        if (array_key_exists('consultant_experience', $data)) {
            $this->consultant_experience = $data['consultant_experience'];
        }
        if (array_key_exists('consulting_month', $data)) {
            $this->management_consultant_month = $data['consulting_month'];
        }
        if (array_key_exists('consulting_year', $data)) {
            $this->management_consultant_year = $data['consulting_year'];
        }
        if (array_key_exists('major_specification', $data)) {
            $this->major_specification_detail = $data['major_specification'];
        }
        if (array_key_exists('applying_reason', $data)) {
            $this->reason_of_membership = $data['applying_reason'];
        }
        if (array_key_exists('employer_j', $data)) {
            $this->employment_designation = $data['employer_j'];
        }
        if (array_key_exists('month_j1', $data)) {
            $this->employment_from_month = $data['month_j1'];
        }
        if (array_key_exists('year_j1', $data)) {
            $this->employment_from_year = $data['year_j1'];
        }
        if (array_key_exists('month_j2', $data)) {
            $this->employment_to_month = $data['month_j2'];
        }
        if (array_key_exists('year_j2', $data)) {
            $this->employment_to_year = $data['year_j2'];
        }

        if (array_key_exists('position_j', $data)) {
            $this->employment_postion_and_summary = $data['position_j'];
        }

        if (array_key_exists('prosper', $data)) {
            $this->prosper = $data['prosper'];
        }

        if (array_key_exists('prosper_signature', $data)) {
            $this->prosper_signature = $data['prosper_signature'];
        }

        if (array_key_exists('membership_no_1', $data)) {
            $this->prosper_membership_no = $data['membership_no_1'];
        }
        if (array_key_exists('grade_1', $data)) {
            $this->prosper_grade = $data['grade_1'];
        }

        if (array_key_exists('date_1', $data)) {
            $this->prosper_date = $data['date_1'];
        }

        if (array_key_exists('seconder', $data)) {
            $this->seconder = $data['seconder'];
        }

        if (array_key_exists('seconder_signature', $data)) {
            $this->seconder_signature = $data['seconder_signature'];
        }

        if (array_key_exists('membership_no_2', $data)) {
            $this->seconder_membership_no = $data['membership_no_2'];
        }
        if (array_key_exists('grade_2', $data)) {
            $this->seconder_grade = $data['grade_2'];
        }

        if (array_key_exists('date_2', $data)) {
            $this->seconder_date = $data['date_2'];
        }

        if (array_key_exists('name_j', $data)) {
            $this->reference_name = $data['name_j'];
        }

        if (array_key_exists('address_j', $data)) {
            $this->reference_address = $data['address_j'];
        }

        if (array_key_exists('phone_j', $data)) {
            $this->reference_phone = $data['phone_j'];
        }

        if (array_key_exists('member_1', $data)) {
            $this->previous_member = $data['member_1'];
        }

        if (array_key_exists('month_2', $data)) {
            $this->previous_member_from_month = $data['month_2'];
        }

        if (array_key_exists('year_2', $data)) {
            $this->previous_member_from_year = $data['year_2'];
        }

        if (array_key_exists('month_3', $data)) {
            $this->previous_member_to_month = $data['month_3'];
        }
        if (array_key_exists('year_3', $data)) {
            $this->previous_member_to_year = $data['year_3'];
        }
        if (array_key_exists('app_signature', $data)) {
            $this->applicants_signature = $data['app_signature'];
        }
        if (array_key_exists('date_3', $data)) {
            $this->applicants_signature_date = $data['date_3'];
        }
        if (array_key_exists('password', $data)) {
            $this->password = $data['password'];
        }
    }

    public function show_data()
    {
        echo  $this->member . "<br>";
        echo  $this->name . "<br>";
        echo  $this->preferred_name . "<br>";
        echo  $this->dob . "<br>";
        echo  $this->company_name . "<br>";
        echo  $this->no_employee . "<br>";
        echo  $this->position_title . "<br>";
        echo  $this->business_address . "<br>";
        echo  $this->business_address_phone . "<br>";
        echo  $this->business_address_fax . "<br>";
        echo  $this->private_address . "<br>";
        echo  $this->private_address_phone . "<br>";
        echo  $this->private_address_fax . "<br>";
        echo  $this->mobile_1 . "<br>";
        echo  $this->mail_1 . "<br>";
        echo  $this->send_mail_to . "<br>";
        echo $this->password . "<br>";
        echo "<pre>";
        print_r($this->university) . "<br>";
        print_r($this->qualification) . "<br>";
        print_r($this->qual_year) . "<br>";
        echo "</pre>";
        echo  $this->membership_body . "<br>";
        echo  $this->consultant . "<br>";
        echo  $this->consultant_experience . "<br>";
        echo  $this->management_consultant_month . "<br>";
        echo  $this->management_consultant_year . "<br>";
        echo  $this->major_specification_detail . "<br>";
        echo  $this->reason_of_membership . "<br>";
        echo "<pre>";
        print_r($this->employment_designation) . "<br>";
        print_r($this->employment_from_month) . "<br>";
        print_r($this->employment_from_year) . "<br>";
        print_r($this->employment_to_month) . "<br>";
        print_r($this->employment_to_year) . "<br>";
        print_r($this->employment_postion_and_summary) . "<br>";
        echo "</pre>";
        echo  $this->prosper . "<br>";
        echo  $this->prosper_signature . "<br>";
        echo  $this->prosper_membership_no . "<br>";
        echo  $this->prosper_grade . "<br>";
        echo  $this->prosper_date . "<br>";
        echo  $this->seconder . "<br>";
        echo  $this->seconder_signature . "<br>";
        echo  $this->seconder_membership_no . "<br>";
        echo  $this->seconder_grade . "<br>";
        echo  $this->seconder_date . "<br>";
        echo "<pre>";
        print_r($this->reference_name) . "<br>";
        print_r($this->reference_address) . "<br>";
        print_r($this->reference_phone) . "<br>";
        echo "</pre>";
        echo  $this->previous_member . "<br>";
        echo  $this->previous_member_from_month . "<br>";
        echo  $this->previous_member_from_year . "<br>";
        echo  $this->previous_member_to_month . "<br>";
        echo  $this->previous_member_to_year . "<br>";
        echo  $this->applicants_signature . "<br>";
        echo  $this->applicants_signature_date . "<br>";
    }

    public function insert_userProfile()
    {
        $sql = "INSERT INTO  u_user_profile(contact_category_type_id,profile_type_id,FullName,DisplayName,DateOfBirth,Email,PrimaryMobile,Title) VALUES(:member,:profile_type_id,:name,:preferred_name,:dob,:mail_1,:mobile_1,:position_title)";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':member', $this->member);
        $stmt->bindValue(':profile_type_id', $this->profile_type_id);
        $stmt->bindValue(':name', $this->name);
        $stmt->bindValue(':preferred_name', $this->preferred_name);
        $stmt->bindValue(':dob', $this->dob);
        $stmt->bindValue(':mobile_1', $this->mobile_1);
        $stmt->bindValue(':mail_1', $this->mail_1);
        $stmt->bindValue(':position_title', $this->position_title);
        $stmt->execute();
        return DBConnection::myDb()->lastInsertId();
    }
    public function insert_user($profile_id)
    {
        $sql = " INSERT INTO  u_users(profile_id,user_name,	password,user_type_id) VALUES (:profile_id,:mobile_1,:password,:user_type_id)";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->bindValue(':mobile_1', $this->mobile_1);
        $stmt->bindValue(':password', $this->password);
        $stmt->bindValue(':user_type_id', $this->user_type_id);
        $stmt->execute();
        $entry_user_id = DBConnection::myDb()->lastInsertId();
        $sql = "UPDATE u_user_profile SET EntryUserID = :entry_user_id WHERE (profile_id=:profile_id)";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':entry_user_id', $entry_user_id);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->execute();
        return $entry_user_id;
    }

    public function insert_userAddress($profile_id)
    {
        $sql = "INSERT INTO  u_user_address(address_type_id,profile_id,Address,phone,fax) VALUES (:address_type_id,:profile_id,:Address,:phone,:fax)";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':address_type_id', 6);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->bindValue(':Address', $this->business_address);
        $stmt->bindValue(':phone', $this->business_address_phone);
        $stmt->bindValue(':fax', $this->business_address_fax);
        $stmt->execute();
        $sql = "INSERT INTO  u_user_address(address_type_id,profile_id,Address,phone,fax) VALUES (:address_type_id,:profile_id,:Address,:phone,:fax)";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':address_type_id', 7);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->bindValue(':Address', $this->private_address);
        $stmt->bindValue(':phone', $this->private_address_phone);
        $stmt->bindValue(':fax', $this->private_address_fax);
        $stmt->execute();
    }

    public function insert_educationHistory($profile_id, $entry_user_id)
    {
        $number_of_field_education = count($this->university);
        $sql = "INSERT INTO  members_education(profile_id,institute_name,degree_name,year,EntryUserID)               VALUES (:profile_id,:university,:qualification,:qual_year,:entry_user_id)";
        $stmt = DBConnection::myQuery($sql);
        for ($i = 0; $i < $number_of_field_education; $i++) {
            $stmt->bindValue(':profile_id', $profile_id);
            $stmt->bindValue(':university', $this->university[$i]);
            $stmt->bindValue(':qualification', $this->qualification[$i]);
            $stmt->bindValue(':qual_year', $this->qual_year[$i]);
            $stmt->bindValue(':entry_user_id', $entry_user_id);
            $stmt->execute();
        }
    }
    public function insert_employmentHistory($profile_id, $entry_user_id)
    {
        $number_of_field_employment = count($this->employment_designation);
        $sql = "INSERT INTO  members_employment(profile_id,employee_designation,from_month_year,to_month_year,about,EntryUserID)  VALUES (:profile_id,:employment_designation,:employment_from,:employment_to,:employment_postion_and_summary,:entry_user_id)";
        $stmt = DBConnection::myQuery($sql);
        for ($i = 0; $i < $number_of_field_employment; $i++) {
            $stmt->bindValue(':profile_id', $profile_id);
            $stmt->bindValue(':employment_designation', $this->employment_designation[$i]);
            $stmt->bindValue(':employment_from', $this->employment_from_month[$i] . ',' . $this->employment_from_year[$i]);
            $stmt->bindValue(':employment_to', $this->employment_to_month[$i] . ',' . $this->employment_to_year[$i]);
            $stmt->bindValue(':employment_postion_and_summary', $this->employment_postion_and_summary[$i]);
            $stmt->bindValue(':entry_user_id', $entry_user_id);
            $stmt->execute();
        }
    }


    public function insert_imcb_membership_info($profile_id, $entry_user_id)
    {
        $sql = "INSERT INTO    icmb_membership_info(profile_id,company_name,total_employees,send_mail_option,	member_professional_body,declaration_option,dec_from_month,dec_from_year,dec_to_month,dec_to_year,applicant_signature,dec_date,EntryUserID) VALUES (:profile_id,:company_name,:no_employee,:send_mail_to,:membership_body,:previous_member,:previous_member_from_month,:previous_member_from_year,:previous_member_to_month,:previous_member_to_year,:applicants_signature,:applicants_signature_date,:entry_user_id)";
        $stmt = DBConnection::myQuery($sql);

        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->bindValue(':company_name', $this->company_name);
        $stmt->bindValue(':no_employee', $this->no_employee);
        $stmt->bindValue(':send_mail_to', $this->send_mail_to);
        $stmt->bindValue(':membership_body', $this->membership_body);
        $stmt->bindValue(':previous_member', $this->previous_member);
        $stmt->bindValue(':previous_member_from_month', $this->previous_member_from_month);
        $stmt->bindvalue(':previous_member_from_year', $this->previous_member_from_year);
        $stmt->bindValue(':previous_member_to_month', $this->previous_member_to_month);
        $stmt->bindValue(':previous_member_to_year', $this->previous_member_to_year);
        $stmt->bindValue(':applicants_signature', $this->applicants_signature);
        $stmt->bindValue(':applicants_signature_date', $this->applicants_signature_date);
        $stmt->bindValue(':entry_user_id', $entry_user_id);
        $stmt->execute();
    }

    public function insert_member_client_reference_update($profile_id, $entry_user_id)
    {
        $sql = "INSERT INTO member_client_reference(profile_id,client_name,client_address,client_phone,EntryUserID) VALUES (:profile_id,:reference_name,:reference_address,:reference_phone,:entry_user_id)";
        $stmt = DBConnection::myQuery($sql);
        for ($i = 0; $i < 3; $i++) {
            $stmt->bindValue(':profile_id', $profile_id);
            $stmt->bindValue(':reference_name', $this->reference_name[$i]);
            $stmt->bindValue(':reference_address', $this->reference_address[$i]);
            $stmt->bindValue(':reference_phone', $this->reference_phone[$i]);
            $stmt->bindValue(':entry_user_id', $entry_user_id);
            $stmt->execute();
        }
    }

    public function insert_memberProsper($profile_id, $entry_user_id)
    {
        $sql = "INSERT INTO membership_prosper(profile_id,	prosper,prosper_signature,	prosper_membership_no,	prosper_grade,prosper_date,seconder,seconder_signature,seconder_membership_no,seconder_grade,seconder_date,EntryUserID) VALUES(:profile_id,:prosper,:prosper_signature_name,:prosper_membership_no,:prosper_grade,:prosper_date,:seconder,:seconder_signature_name,:seconder_membership_no,:seconder_grade,:seconder_date,:entry_user_id)";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->bindValue(':prosper', $this->prosper);
        $stmt->bindValue(':prosper_signature_name', $this->prosper_signature);
        $stmt->bindValue(':prosper_membership_no', $this->prosper_membership_no);
        $stmt->bindValue(':prosper_grade', $this->prosper_grade);
        $stmt->bindValue(':prosper_date', $this->prosper_date);
        $stmt->bindValue(':seconder', $this->seconder);
        $stmt->bindValue(':seconder_signature_name', $this->seconder_signature);
        $stmt->bindValue(':seconder_membership_no', $this->seconder_membership_no);
        $stmt->bindValue(':seconder_grade', $this->seconder_grade);
        $stmt->bindValue(':seconder_date', $this->seconder_date);
        $stmt->bindValue(':entry_user_id', $entry_user_id);
        $stmt->execute();
    }


    public function insert_memberConsultingExperiencee($profile_id, $entry_user_id)
    {
        $sql = "INSERT INTO member_consulting_experience(profile_id,consultant_option,consultant_experience,consultant_month,consultant_year,major_specification,	applying_reason,entry_user_id) VALUES (:profile_id,:consultant,:consultant_experience,:management_consultant_month,:management_consultant_year,:major_specification_detail,:reason_of_membership,:entry_user_id)";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->bindValue(':consultant', $this->consultant);
        $stmt->bindValue(':consultant_experience', $this->consultant_experience);
        $stmt->bindValue(':management_consultant_month', $this->management_consultant_month);
        $stmt->bindValue(':management_consultant_year', $this->management_consultant_year);
        $stmt->bindValue(':major_specification_detail', $this->major_specification_detail);
        $stmt->bindValue(':reason_of_membership', $this->reason_of_membership);
        $stmt->bindValue(':entry_user_id', $entry_user_id);
        $stmt->execute();
    }

    public function isIpInPermanentBlockList()
    {
        $ipAddress = $this->getClientIPAddress();

        // Check IP in permanent_block table
        $sql = "SELECT blockedIP FROM permanent_block WHERE blockedIP=? LIMIT 1";
        $statementBlockedIP = DBConnection::myQuery($sql);
        //        $statementBlockedIP = $this->db->prepare("SELECT blockedIP FROM permanent_block WHERE blockedIP=? LIMIT 1");
        $statementBlockedIP->execute(array($ipAddress));
        $numBlockedIP = $statementBlockedIP->rowCount();

        if ($numBlockedIP > 0)
            return true;

        return false;
    }

    public function isIPInLockedDownList()
    {
        $ipAddress = $this->getClientIPAddress();

        $sql = "SELECT lockedIP, releaseDate FROM login_lockdown WHERE lockedIP=?  ORDER BY SL DESC LIMIT 1";
        //        $statementLockedIP = $this->db->prepare("SELECT lockedIP, releaseDate FROM login_lockdown WHERE lockedIP=?  ORDER BY SL DESC LIMIT 1");
        $statementLockedIP = DBConnection::myQuery($sql);
        $statementLockedIP->execute(array($ipAddress));
        $result = $statementLockedIP->fetch(PDO::FETCH_ASSOC);
        $numLockedIP = $statementLockedIP->rowCount();

        if ($numLockedIP > 0) {
            // Check time difference from now to releaseDate
            $releaseDate = $result['releaseDate'];

            $currentDateTime =  date("Y-m-d h:i:s"); // 2018-12-21 08:17:22
            if ($currentDateTime > $releaseDate) {
                return false;
            } else {
                return true;
            }
        }
        return false;
    }
    public function userLogin($user_name, $Password)
    {
        // Set Time Zone to Asia/Dhaka
        date_default_timezone_set("Asia/Dhaka");
        // Get User IP
        $ipAddress = $this->getClientIPAddress();
        // Check IP in permanent_block table
        $sql = "SELECT blockedIP FROM permanent_block WHERE blockedIP=? LIMIT 1";
        $statementBlockedIP = DBConnection::myQuery($sql);
        $statementBlockedIP->execute(array($ipAddress));
        $numBlockedIP = $statementBlockedIP->rowCount();
        // If IP is in permanentBlock IP list
        if ($numBlockedIP > 0) {
            // Throw Error
            throw new \Exception("Your IP address is in permanent blocked ip address list. Please contact with administrator to remove your IP.");
        } else {
            // Check the IP in login_lockdown table
            $sql = "SELECT lockedIP, releaseDate FROM login_lockdown WHERE lockedIP=?  ORDER BY SL DESC LIMIT 1";
            $statementLockedIP = DBConnection::myQuery($sql);
            $statementLockedIP->execute(array($ipAddress));
            $result = $statementLockedIP->fetch(PDO::FETCH_ASSOC);
            $numLockedIP = $statementLockedIP->rowCount();
            // If IP is in login_lockdown IP list
            if ($numLockedIP > 0) {
                // Check time difference from now to releaseDate
                $releaseDate = $result['releaseDate'];
                $currentDateTime =  date("Y-m-d h:i:s"); // 2018-12-21 08:17:22
                if ($currentDateTime > $releaseDate) {
                    // Login with data
                    $this->doLoginFunction($user_name, $Password, $ipAddress);
                } else {
                    // Throw Error
                    //throw new Exception("Your IP address is locked for 30 minutes. Try after $releaseDate");
                }
            } else {
                // Login with data
                $this->doLoginFunction($user_name, $Password, $ipAddress);
            }
        }
        return true;
    }
    public function getClientIPAddress()
    {
        $ipaddress = '';
        if (isset($_SERVER['HTTP_CLIENT_IP']))
            $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
        else if (isset($_SERVER['HTTP_X_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
        else if (isset($_SERVER['HTTP_X_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
        else if (isset($_SERVER['HTTP_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
        else if (isset($_SERVER['HTTP_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_FORWARDED'];
        else if (isset($_SERVER['REMOTE_ADDR']))
            $ipaddress = $_SERVER['REMOTE_ADDR'];
        else
            $ipaddress = 'UNKNOWN';
        return $ipaddress;
    }
    public function  doLoginFunction($user_name, $Password, $ipAddress)
    {

        $sql = "SELECT user_id,profile_id,user_name,user_type_id FROM u_users WHERE user_name=? AND password=?";
        $statementLoginAttempt = DBConnection::myQuery($sql);
        $statementLoginAttempt->execute(array($user_name, $Password));
        $result = $statementLoginAttempt->fetch(PDO::FETCH_ASSOC);
        $numSuccessfulLoginAttempt = $statementLoginAttempt->rowCount();
        if ($numSuccessfulLoginAttempt > 0) {
            // Store in login_activity table about the login information
            $loginDate = date("Y-m-d h:i:s");

            if ($ipAddress == "::1") {
                $loginCountry = "Bangladesh";
            } else {
                $loginCountry = $this->ipInformation("Visitor", "Country");
            }

            $loginActivityId = $this->getNextLoginActivityId();
            $sql = "INSERT INTO login_activity (userID, loginDate, logoutDate, loginIP, loginCountry) VALUES (?, ?, ?, ?, ?)";
            $statementAddLoginAttemptCount = DBConnection::myQuery($sql);
            $statementAddLoginAttemptCount->execute(array($result['user_id'], $loginDate, null, $ipAddress, $loginCountry));
            // Remove old login_attempts for this IP
            $this->removeAllLoginAttemptForIP($ipAddress);
            // Remove old login_lockdown for this IP
            $this->removeAllLoginLockDownForIP($ipAddress);

            /**
             * -------------------get user permissions-----------------------------
             ***/
            // $sql = "select permissionID from user_permission where user_id=:user_id";
            // $stmt = DBConnection::myQuery($sql);
            // $stmt->bindValue(':user_id', $result['user_id']);
            // $stmt->execute();
            // $res = $stmt->fetchAll(\PDO::FETCH_ASSOC);
            // $permissionidarray = [];
            // if (count($res) >= 1) {
            //     foreach ($res as $permissionid) {
            //         $permissionidarray[] = $permissionid['permissionID'];
            //     }
            // }

            /**
             * ----------------------------------------------------------------
             **/


            /**
             * ------------------get user's vendorID-----------------------------
             **/
            // $getvendor = "select EntryUserID,profile_type_id,storeID from u_user_profile where profile_id=:profile_id";
            // $stmt = DBConnection::myQuery($getvendor);
            // $stmt->bindValue(':profile_id', $result['profile_id']);
            // $stmt->execute();
            // $res2 = $stmt->fetch(\PDO::FETCH_OBJ);
            /**
             * ------------------------------------------------------------------
             **/

            /**
             * ------------------get settings table data for the vendor ---------
             **/
            // $getSettings = "select * from settings where vendorID=:vendorID";
            // $stmt = DBConnection::myQuery($getSettings);
            // $stmt->bindValue(':vendorID', $res2->EntryUserID);
            // $stmt->execute();
            // $resSetting = $stmt->fetch(\PDO::FETCH_OBJ);
            /**
             * ------------------------------------------------------------------
             **/

            /**----------------------get vendor store ID------------------------**/
            // $sql = "select storeID from u_user_profile where EntryUserID=:EntryUserID and profile_type_id=:profile_type_id limit 1";
            // $stmt = DBConnection::myQuery($sql);
            // $stmt->bindValue(':EntryUserID', $res2->EntryUserID);
            // $stmt->bindValue(':profile_type_id', 4);
            // $stmt->execute();
            // $vendorStore = $stmt->fetch(\PDO::FETCH_OBJ);

            /**------------------------------------------------------------------**/


            /**
             * ------------------store data in session-----------------------------
             **/

            Session::init();
            Session::set('login', true);
            Session::set('user_id', $result['user_id']);
            Session::set('user_name', $result['user_name']);
            Session::set('profile_id', $result['profile_id']);
            Session::set('user_type_id', $result['user_type_id']);

            // Session::set('vendorID', $res2->EntryUserID);
            // Session::set('default_languageID', $resSetting->default_languageID);
            // Session::set('profile_type_id', $res2->profile_type_id);
            // Session::set('storeID', $res2->storeID);
            // Session::set('vendor_storeID', $vendorStore->storeID);
            // Session::set('permissions', $permissionidarray);

            // Session::set('companyID', 1);
            // Session::set('branchID', 1);
            // Session::set('applicationID', 1);
            //header('location:index.php');
            /**
             * -----------------------------------------------------------------------
             **/
        } else {

            // Check how many times this IP in login_attempt_count table
            $sql = "SELECT attemptIP FROM login_attempt_count WHERE attemptIP=?";
            $statementLoginAttemptCount = DBConnection::myQuery($sql);
            $statementLoginAttemptCount->execute(array($ipAddress));
            $loginAttemptCount = $statementLoginAttemptCount->rowCount();

            // Get next ID in login_attempt_count table
            $loginAttemptID = $this->getNextLoginAttemptCountId();

            // store in login_attempt_count table
            $attemptTime = date("Y-m-d h:i:s");
            $sql = "INSERT INTO login_attempt_count (userLogin, attemptTime, attemptIP) VALUES (?, ?, ?)";
            $statementAddLoginAttemptCount = DBConnection::myQuery($sql);
            $statementAddLoginAttemptCount->execute(array($user_name, $attemptTime, $ipAddress));


            // store in failed_login table
            $failedLoginDate = date("Y-m-d h:i:s");
            $sql = "INSERT INTO failed_logins (userID, userLoginID, failedLoginDate, loginAttemptID) VALUES (?, ?, ?, ?)";
            $statementAddLoginFailed = DBConnection::myQuery($sql);
            $statementAddLoginFailed->execute(array(1, $user_name, $failedLoginDate, $loginAttemptID));


            // If login attempt count == 3 that means now 3 times he tries to wrong access
            if ($loginAttemptCount == 3) {
                /**
                Add his data to login_lockdown table, remove all data of this IP from
                login_attempt_count table and throw a message
                 **/

                // Add data to login_lockdown table
                $lockDownDateTime = date("Y-m-d h:i:s");
                $releaseDateTime = date("Y-m-d H:i:s", strtotime($lockDownDateTime . "+30 minutes"));
                $lockType = 1;
                $sql = "INSERT INTO login_lockdown (userID, userLogin, lockedIP, lockDownDate, releaseDate,lockType) VALUES (?, ?, ?, ?, ?, ?)";
                $statementAddLoginLockDown = DBConnection::myQuery($sql);
                $statementAddLoginLockDown->execute(array(0, $user_name, $ipAddress, $lockDownDateTime, $releaseDateTime, $lockType));

                // remove all data of this IP from login_attempt_count table
                $this->removeAllLoginAttemptForIP($ipAddress);
                // Throw an error
                //throw new Exception("Your IP address is locked for 30 minutes. Try after $releaseDateTime");
            }
            // Throw an error
            //            throw new Exception("Your Username and Password combination is not correct ! Please give correct one");
            Session::set('login-failure', "<div class='alert alert-danger'>Invalid login Credentials !!</div>");
        }
    }
    public function ipInformation($ip = NULL, $purpose = "location", $deep_detect = TRUE)
    {
        $output = NULL;
        if (filter_var($ip, FILTER_VALIDATE_IP) === FALSE) {
            if (is_null($ip)) {
                $ip = $_SERVER["REMOTE_ADDR"];
            }

            if ($deep_detect) {
                if (filter_var(@$_SERVER['HTTP_X_FORWARDED_FOR'], FILTER_VALIDATE_IP))
                    $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
                if (filter_var(@$_SERVER['HTTP_CLIENT_IP'], FILTER_VALIDATE_IP))
                    $ip = $_SERVER['HTTP_CLIENT_IP'];
            }
        }
        $purpose    = str_replace(array("name", "\n", "\t", " ", "-", "_"), NULL, strtolower(trim($purpose)));
        $support    = array("country", "countrycode", "state", "region", "city", "location", "address");
        $continents = array(
            "AF" => "Africa",
            "AN" => "Antarctica",
            "AS" => "Asia",
            "EU" => "Europe",
            "OC" => "Australia (Oceania)",
            "NA" => "North America",
            "SA" => "South America"
        );
        if (filter_var($ip, FILTER_VALIDATE_IP) && in_array($purpose, $support)) {
            $ipdat = @json_decode(file_get_contents("http://www.geoplugin.net/json.gp?ip=" . $ip));
            if (@strlen(trim($ipdat->geoplugin_countryCode)) == 2) {
                switch ($purpose) {
                    case "location":
                        $output = array(
                            "city"           => @$ipdat->geoplugin_city,
                            "state"          => @$ipdat->geoplugin_regionName,
                            "country"        => @$ipdat->geoplugin_countryName,
                            "country_code"   => @$ipdat->geoplugin_countryCode,
                            "continent"      => @$continents[strtoupper($ipdat->geoplugin_continentCode)],
                            "continent_code" => @$ipdat->geoplugin_continentCode
                        );
                        break;
                    case "address":
                        $address = array($ipdat->geoplugin_countryName);
                        if (@strlen($ipdat->geoplugin_regionName) >= 1)
                            $address[] = $ipdat->geoplugin_regionName;
                        if (@strlen($ipdat->geoplugin_city) >= 1)
                            $address[] = $ipdat->geoplugin_city;
                        $output = implode(", ", array_reverse($address));
                        break;
                    case "city":
                        $output = @$ipdat->geoplugin_city;
                        break;
                    case "state":
                        $output = @$ipdat->geoplugin_regionName;
                        break;
                    case "region":
                        $output = @$ipdat->geoplugin_regionName;
                        break;
                    case "country":
                        $output = @$ipdat->geoplugin_countryName;
                        break;
                    case "countrycode":
                        $output = @$ipdat->geoplugin_countryCode;
                        break;
                }
            }
        }
        return $output;
    }
    public function getNextLoginActivityId()
    {
        //        $statement = $this->db->prepare("SHOW TABLE STATUS LIKE 'login_activity'");
        $sql = "SHOW TABLE STATUS LIKE 'login_activity'";
        $statement = DBConnection::myQuery($sql);
        $statement->execute();
        $result = $statement->fetchAll();
        foreach ($result as $row) {
            return $row[10];
        }
    }

    public function removeAllLoginAttemptForIP($ipAddress)
    {
        $sql = "DELETE FROM login_attempt_count where attemptIP=?";
        $stmt = DBConnection::myQuery($sql);
        $stmt->execute(array($ipAddress));
    }

    public function removeAllLoginLockDownForIP($ipAddress)
    {
        $sql = "DELETE FROM login_lockdown where lockedIP=?";
        $stmt = DBConnection::myQuery($sql);
        $stmt->execute(array($ipAddress));
    }

    public function getNextLoginAttemptCountId()
    {
        //        $statement = $this->db->prepare("SHOW TABLE STATUS LIKE 'login_attempt_count'");
        $sql = "SHOW TABLE STATUS LIKE 'login_attempt_count'";
        $statement = DBConnection::myQuery($sql);
        $statement->execute();
        $result = $statement->fetchAll();
        foreach ($result as $row) {
            return $row[10];
        }
    }
    public function getPreviousNmbr($profile_id)
    {
        $sql = "SELECT user_name FROM u_users WHERE profile_id=:profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->execute();
        $res = $stmt->fetch(PDO::FETCH_OBJ);
        return $res;
    }

    public function checkDuplicateNmbr($phone)
    {
        $sql = "SELECT * FROM u_users WHERE user_name=:user_name";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':user_name', $phone);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $result_2 = $stmt->rowCount();
        if ($result_2 > 0) {
            return true;
        } else {
            return false;
        }
    }
    public function checkDuplicateMail($mail)
    {
        $sql = "SELECT * FROM u_user_profile WHERE Email=:mail";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':mail', $mail);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $result_2 = $stmt->rowCount();
        if ($result_2 > 0) {
            return true;
        } else {
            return false;
        }
    }
    public function checkDuplicateMailForUpdate($mail, $profile_id)
    {
        $sql = "SELECT * FROM u_user_profile WHERE Email=:mail AND profile_id !=:profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':mail', $mail);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $result_2 = $stmt->rowCount();
        if ($result_2 > 0) {
            return true;
        } else {
            return false;
        }
    }
    public function getPreviousMail($profile_id)
    {
        $sql = "SELECT Email FROM u_user_profile WHERE profile_id=:profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->execute();
        $res = $stmt->fetch(PDO::FETCH_OBJ);
        return $res;
    }
    public function getprofileinfoByID($profile_id)
    {
        $sql = "select FullName,DisplayName,DateOfBirth,Email,PrimaryMobile,contact_category_type_id,Title 
        from u_user_profile 
        where profile_id = :profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->execute();
        $res = $stmt->fetch(PDO::FETCH_OBJ);
        return $res;
    }
    public function getMembershipInfo($profile_id)
    {
        $sql = "select company_name,total_employees,send_mail_option,member_professional_body,declaration_option,dec_from_month,dec_from_year,dec_to_month,dec_to_year,applicant_signature,dec_date 
        from icmb_membership_info 
        where  profile_id = :profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->execute();
        $res = $stmt->fetch(PDO::FETCH_OBJ);
        return $res;
    }

    public function getEducationInfo($profile_id)
    {
        $sql = " select institute_name,degree_name,year
        from members_education 
        where  profile_id = :profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $res;
    }
    public function getClientPre($profile_id)
    {
        $sql = " select client_name,client_address,client_phone
        from member_client_reference 
        where  profile_id = :profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $res;
    }
    public function getConsultingExp($profile_id)
    {
        $sql = "select consultant_option,consultant_experience,consultant_month,consultant_year,major_specification,applying_reason
        from member_consulting_experience
        where  profile_id = :profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->execute();
        $res = $stmt->fetch(PDO::FETCH_OBJ);
        return $res;
    }
    public function getEmploymentHist($profile_id)
    {
        $sql = " select employee_designation,from_month_year,to_month_year,about
        from members_employment
        where  profile_id = :profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $res;
    }
    public function getProsper($profile_id)
    {
        $sql = "select prosper,prosper_signature,prosper_membership_no,prosper_grade,prosper_date,seconder,seconder_signature,seconder_membership_no,seconder_grade,seconder_date
        from membership_prosper
        where  profile_id = :profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->execute();
        $res = $stmt->fetch(PDO::FETCH_OBJ);
        return $res;
    }
    public function getAddress($profile_id)
    {
        $sql = " select Address,phone,fax
        from u_user_address
        where  profile_id = :profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $res;
    }
    public function update_userProfile($profile_id, $user_id)
    {
        $sql = "UPDATE  u_user_profile 
        SET EntryUserID=:EntryUserID,contact_category_type_id=:member,FullName=:name,DisplayName=:preferred_name,DateOfBirth=:dob,Email=:mail_1,PrimaryMobile=:mobile_1,Title=:position_title
        WHERE profile_id=:profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':EntryUserID', $user_id);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->bindValue(':member', $this->member);
        $stmt->bindValue(':name', $this->name);
        $stmt->bindValue(':preferred_name', $this->preferred_name);
        $stmt->bindValue(':dob', $this->dob);
        $stmt->bindValue(':mobile_1', $this->mobile_1);
        $stmt->bindValue(':mail_1', $this->mail_1);
        $stmt->bindValue(':position_title', $this->position_title);
        $stmt->execute();
        //return DBConnection::myDb()->lastInsertId();
    }
    public function update_user($profile_id, $user_id)
    {
        $sql = " UPDATE u_users
        SET profile_id=:profile_id,user_name=:mobile_1 WHERE user_id=:user_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->bindValue(':user_id', $user_id);
        $stmt->bindValue(':mobile_1', $this->mobile_1);
        $stmt->execute();
    }
    public function update_userAddress($profile_id, $user_id)
    {
        $sql = "UPDATE u_user_address
        SET address_type_id=:address_type_id,Address=:Address,phone=:phone,fax=:fax WHERE profile_id=:profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':address_type_id', 6);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->bindValue(':Address', $this->business_address);
        $stmt->bindValue(':phone', $this->business_address_phone);
        $stmt->bindValue(':fax', $this->business_address_fax);
        $stmt->execute();
        $sql = "UPDATE u_user_address
        SET address_type_id=:address_type_id,Address=:Address,phone=:phone,fax=:fax WHERE profile_id=:profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':address_type_id', 7);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->bindValue(':Address', $this->business_address);
        $stmt->bindValue(':phone', $this->business_address_phone);
        $stmt->bindValue(':fax', $this->business_address_fax);
        $stmt->execute();
    }
    public function update_educationHistory($profile_id, $user_id)
    {
        $number_of_field_education = count($this->university);
        $sql = "UPDATE members_education
        SET 
        institute_name=:university,degree_name=:qualification,year=:qual_year,EntryUserID=:entry_user_id WHERE    profile_id=:profile_id ";
        $stmt = DBConnection::myQuery($sql);
        for ($i = 0; $i < $number_of_field_education; $i++) {
            $stmt->bindValue(':profile_id', $profile_id);
            $stmt->bindValue(':university', $this->university[$i]);
            $stmt->bindValue(':qualification', $this->qualification[$i]);
            $stmt->bindValue(':qual_year', $this->qual_year[$i]);
            $stmt->bindValue(':entry_user_id', $user_id);
            $stmt->execute();
        }
    }
    public function update_employmentHistory($profile_id, $user_id)
    {
        $number_of_field_employment = count($this->employment_designation);
        $sql = "UPDATE members_employment
        SET employee_designation=:employment_designation,from_month_year=:employment_from,to_month_year=:employment_to,about=:employment_postion_and_summary,EntryUserID=:entry_user_id
        WHERE  profile_id=:profile_id";
        $stmt = DBConnection::myQuery($sql);
        for ($i = 0; $i < $number_of_field_employment; $i++) {
            $stmt->bindValue(':profile_id', $profile_id);
            $stmt->bindValue(':employment_designation', $this->employment_designation[$i]);
            $stmt->bindValue(':employment_from', $this->employment_from_month[$i] . ',' . $this->employment_from_year[$i]);
            $stmt->bindValue(':employment_to', $this->employment_to_month[$i] . ',' . $this->employment_to_year[$i]);
            $stmt->bindValue(':employment_postion_and_summary', $this->employment_postion_and_summary[$i]);
            $stmt->bindValue(':entry_user_id', $user_id);
            $stmt->execute();
        }
    }
    public function update_imcb_membership_info($profile_id, $user_id)
    {
        $sql = "UPDATE    icmb_membership_info
        SET company_name=:company_name,total_employees=:no_employe,send_mail_option=:send_mail_to,	member_professional_body=:membership_body,declaration_option=:previous_member,dec_from_month=:previous_member_from_month,dec_from_year=:previous_member_from_year,dec_to_month=:previous_member_to_month,dec_to_year=:previous_member_to_year,applicant_signature=:applicants_signature,dec_date=:applicants_signature_date,EntryUserID=:entry_user_id 
        WHERE profile_id=:profile_id";
        $stmt = DBConnection::myQuery($sql);

        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->bindValue(':company_name', $this->company_name);
        $stmt->bindValue(':no_employe', $this->no_employee);
        $stmt->bindValue(':send_mail_to', $this->send_mail_to);
        $stmt->bindValue(':membership_body', $this->membership_body);
        $stmt->bindValue(':previous_member', $this->previous_member);
        $stmt->bindValue(':previous_member_from_month', $this->previous_member_from_month);
        $stmt->bindvalue(':previous_member_from_year', $this->previous_member_from_year);
        $stmt->bindValue(':previous_member_to_month', $this->previous_member_to_month);
        $stmt->bindValue(':previous_member_to_year', $this->previous_member_to_year);
        $stmt->bindValue(':applicants_signature', $this->applicants_signature);
        $stmt->bindValue(':applicants_signature_date', $this->applicants_signature_date);
        $stmt->bindValue(':entry_user_id', $user_id);
        $stmt->execute();
    }
    public function update_member_client_reference_update($profile_id, $user_id)
    {
        $sql = "UPDATE member_client_reference
        SET client_name=:reference_name,client_address=:reference_address,client_phone=:reference_phone,EntryUserID=:entry_user_id 
        WHERE profile_id =:profile_id ";
        $stmt = DBConnection::myQuery($sql);
        for ($i = 0; $i < 3; $i++) {
            $stmt->bindValue(':profile_id', $profile_id);
            $stmt->bindValue(':reference_name', $this->reference_name[$i]);
            $stmt->bindValue(':reference_address', $this->reference_address[$i]);
            $stmt->bindValue(':reference_phone', $this->reference_phone[$i]);
            $stmt->bindValue(':entry_user_id', $user_id);
            $stmt->execute();
        }
    }

    public function update_memberProsper($profile_id, $user_id)
    {
        $sql = "UPDATE membership_prosper
        SET prosper=:prosper,prosper_signature=:prosper_signature_name,	prosper_membership_no=:prosper_membership_no,	prosper_grade=:prosper_grade,prosper_date=:prosper_date,seconder=:seconder,seconder_signature=:seconder_signature_name,seconder_membership_no=:seconder_membership_no,seconder_grade=:seconder_grade,seconder_date=:seconder_date,EntryUserID=:entry_user_id WHERE profile_id=:profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->bindValue(':prosper', $this->prosper);
        $stmt->bindValue(':prosper_signature_name', $this->prosper_signature);
        $stmt->bindValue(':prosper_membership_no', $this->prosper_membership_no);
        $stmt->bindValue(':prosper_grade', $this->prosper_grade);
        $stmt->bindValue(':prosper_date', $this->prosper_date);
        $stmt->bindValue(':seconder', $this->seconder);
        $stmt->bindValue(':seconder_signature_name', $this->seconder_signature);
        $stmt->bindValue(':seconder_membership_no', $this->seconder_membership_no);
        $stmt->bindValue(':seconder_grade', $this->seconder_grade);
        $stmt->bindValue(':seconder_date', $this->seconder_date);
        $stmt->bindValue(':entry_user_id', $user_id);
        $stmt->execute();
    }
    public function update_memberConsultingExperiencee($profile_id, $user_id)
    {
        $sql = "UPDATE member_consulting_experience
        SET consultant_option=:consultant,consultant_experience=:consultant_experience,consultant_month=:management_consultant_month,consultant_year=:management_consultant_year,major_specification=:major_specification_detail,	applying_reason=:reason_of_membership,entry_user_id=:entry_user_id WHERE profile_id=:profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->bindValue(':consultant', $this->consultant);
        $stmt->bindValue(':consultant_experience', $this->consultant_experience);
        $stmt->bindValue(':management_consultant_month', $this->management_consultant_month);
        $stmt->bindValue(':management_consultant_year', $this->management_consultant_year);
        $stmt->bindValue(':major_specification_detail', $this->major_specification_detail);
        $stmt->bindValue(':reason_of_membership', $this->reason_of_membership);
        $stmt->bindValue(':entry_user_id', $user_id);
        $stmt->execute();
    }
    public function toggleActiveStatus($status, $profile_id)
    {
        $sql = "update u_user_profile set status =:status where profile_id = :profile_id";

        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':status', $status);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->execute();
        return true;
    }
    public function getAllprofilelists($profile_type_id)
    {
        $sql = "select profile_id,FullName,DisplayName,DateOfBirth,Email,PrimaryMobile,Title,profile_photo,status from u_user_profile where profile_type_id = :profile_type_id";
        $stmt = DBConnection::myQuery($sql);
        // $this->limit = $datalimit;
        $stmt->bindValue(':profile_type_id', $profile_type_id);
        //$stmt->bindValue(':clientStatus',1);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_OBJ);
        return $res;
    }
    public function deleteEducationHist($profile_id, $resEduId)
    {
        $sql = "DELETE FROM members_education WHERE profile_id=:profile_id AND edu_sl_number=:sl_number";
        foreach ($resEduId as $row) {
            $stmt = DBConnection::myQuery($sql);
            $stmt->bindValue(':profile_id', $profile_id);
            $stmt->bindValue(':sl_number', $row['edu_sl_number']);
            $stmt->execute();
        }
    }
    public function deleteEmploymentHist($profile_id, $resEmpId)
    {
        $sql = "DELETE FROM members_employment WHERE profile_id=:profile_id AND member_sl_id=:sl_number";
        foreach ($resEmpId as $row) {
            $stmt = DBConnection::myQuery($sql);
            $stmt->bindValue(':profile_id', $profile_id);
            $stmt->bindValue(':sl_number', $row['member_sl_id']);
            $stmt->execute();
        }
    }
    public function getEducationHistId($profile_id)
    {
        $sql = "SELECT edu_sl_number FROM members_education WHERE profile_id=:profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $res;
    }
    public function getEmploymentHistId($profile_id)
    {
        $sql = "SELECT member_sl_id FROM members_employment WHERE profile_id=:profile_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':profile_id', $profile_id);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $res;
    }
    public function getMemberTypeByID($member_type_id)
    {
        $sql = "SELECT contact_category_type FROM u_contact_category_types WHERE contact_category_type_id=:member_type_id";
        $stmt = DBConnection::myQuery($sql);
        $stmt->bindValue(':member_type_id', $member_type_id);
        $stmt->execute();
        $res = $stmt->fetch(PDO::FETCH_OBJ);
        return $res;
    }
}
