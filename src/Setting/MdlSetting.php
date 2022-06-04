<?php 
namespace App\Setting;
use App\DBConnection;
use App\Session;
date_default_timezone_set('Asia/Dhaka');

class MdlSetting
{
		/*===================================
			Setting Show
	=====================================*/
	static public function MdlShowSetting($table,$columnuserName,$value)
	{
		if($columnuserName != "" && $value != ""){

			$stmt = DBConnection::myQuery("SELECT * FROM $table WHERE $columnuserName = :$columnuserName AND branchID=:branchID AND applicationID=:applicationID");
			$stmt->bindParam(":".$columnuserName,$value,DBConnection::myDb()::PARAM_STR);
            $stmt->bindValue(':branchID',Session::get('branchID'));
            $stmt->bindValue(':applicationID',Session::get('applicationID'));
			$stmt->execute();
			return $stmt->fetch();
		}else{
			$stmt = DBConnection::myQuery("SELECT * FROM $table");
            //$stmt->bindValue(':branchID',Session::get('branchID'));
            //$stmt->bindValue(':applicationID',Session::get('applicationID'));
			$stmt->execute();
			return $stmt->fetchAll();
		}

		$stmt->close();
		$stmt = null;
	}

	/*===================================
			product Create
	=====================================*/
	static public function MdlCreateService($table,$data){

	//print_r($data);
		$stmt = DBConnection::myQuery("INSERT INTO $table (serviceName,serviceDetails,serviceShortNote,serviceIcon,serviceOrder,serviceStatus) VALUES (:serviceName,:serviceDetails,:serviceShortNote,:serviceIcon,:serviceOrder,:serviceStatus)");

		//$date = date('Y-m-d h:i:sa');
		$stmt->bindParam(":serviceName", $data['serviceName'], DBConnection::myDb()::PARAM_STR);
		$stmt->bindParam(":serviceDetails", $data['serviceDetails'], DBConnection::myDb()::PARAM_STR);
		$stmt->bindParam(":serviceShortNote", $data['serviceShortNote'], DBConnection::myDb()::PARAM_STR);
		$stmt->bindParam(":serviceIcon", $data['serviceIcon'], DBConnection::myDb()::PARAM_STR);
		$stmt->bindParam(":serviceOrder", $data['serviceOrder'], DBConnection::myDb()::PARAM_STR);
		$stmt->bindParam(":serviceStatus", $data['serviceStatus'], DBConnection::myDb()::PARAM_STR);
		//$stmt->bindParam(":createDate", $date);

		//print_r($stmt);exit();
		
		if ($stmt->execute()) {
			
			return 'ok';
		
		} else {
			
			return 'error';
		}
		
		$stmt -> close();

		$stmt = null;
	}


	/*===================================
			product update
	=====================================*/

	static public function mdlEditSetting($table, $data){

		$stmt = DBConnection::myQuery("UPDATE $table set 
										siteTitle = :siteTitle, 
										metaDescription = :metaDescription, 
										metaTag = :metaTag, 
										siteLogo = :siteLogo,
										siteFav = :siteFav, 
										primaryPhone = :primaryPhone, 
										alterPhone = :alterPhone,
										primaryMobile = :primaryMobile,
										alterMobile = :alterMobile,
										faxNo = :faxNo,
										email = :email,
										address = :address,
										office_address = :office_address,
										footerText = :footerText,
										facebook = :facebook,
										twitter = :twitter,
										linkedin = :linkedin,
										googlePlus = :googlePlus,
										youtube = :youtube,
										pinterest = :pinterest
										WHERE settingID = :settingID"
									);

		//$date = date('Y-m-d h:i:sa');
		$stmt -> bindParam(":siteTitle", $data["siteTitle"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":settingID", $data["settingID"], DBConnection::myDb()::PARAM_INT);
		$stmt -> bindParam(":metaDescription", $data["metaDescription"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":metaTag", $data["metaTag"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":siteLogo", $data["siteLogo"], DBConnection::myDb()::PARAM_STR);

		$stmt -> bindParam(":siteFav", $data["siteFav"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":primaryPhone", $data["primaryPhone"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":alterPhone", $data["alterPhone"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":primaryMobile", $data["primaryMobile"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":alterMobile", $data["alterMobile"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":faxNo", $data["faxNo"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":email", $data["email"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":address", $data["address"], DBConnection::myDb()::PARAM_STR);

		$stmt -> bindParam(":office_address", $data["office_address"], DBConnection::myDb()::PARAM_STR);


		$stmt -> bindParam(":footerText", $data["footerText"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":facebook", $data["facebook"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":twitter", $data["twitter"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":linkedin", $data["linkedin"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":googlePlus", $data["googlePlus"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":youtube", $data["youtube"], DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":pinterest", $data["pinterest"], DBConnection::myDb()::PARAM_STR);

		//$stmt->bindParam(":createDate", $date);

		if ($stmt->execute()) {
			
			return 'ok';
		
		} else {
			
			return 'error';
		
		}
		
		$stmt -> close();

		$stmt = null;
	}


	/*=============================================
	delete Service  
	=============================================*/

	static public function mdlDeleteService($table,$data){
		$stmt = DBConnection::myQuery("DELETE FROM $table WHERE servicesID = :servicesID");
		$stmt->bindParam(":servicesID",$data,DBConnection::myDb()::PARAM_INT);

		if ($stmt->execute()) {
			
			return 'ok';
		
		} else {
			
			return 'error';
		
		}
		
		$stmt -> close();

		$stmt = null;
	}

/*=============================================
	Update Slider Status 
	=============================================*/
	static public function MdlServiceStatusUpdate($table,$item1,$value1,$item2,$value2){
		$stmt = DBConnection::myQuery("UPDATE $table set $item1 = :$item1 WHERE $item2 = :$item2");
		$stmt -> bindParam(":".$item1, $value1, DBConnection::myDb()::PARAM_STR);
		$stmt -> bindParam(":".$item2, $value2, DBConnection::myDb()::PARAM_STR);


		if ($stmt->execute()) {
			
			return 'ok';
		
		} else {
			
			return 'error';
		
		}
		
		$stmt -> close();

		$stmt = null;
	}























}