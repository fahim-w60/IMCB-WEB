<?php

namespace App\Setting;

use App\Setting\MdlSetting;

class Setting
{

	/*===================================
			setting Show
=====================================*/

	static public function showSetting($columnuserName, $value)
	{
		$table = "website_settings";
		$request = MdlSetting::MdlShowSetting($table, $columnuserName, $value);

		return $request;
	}




	static public function EditSetting()
	{

		if (isset($_POST["settingID"])) {

			/*=============================================
			VALIDATE IMAGE
			=============================================*/

			//$photo = $_POST["currentPicture"];
			$file_new_name = "";
			if (isset($_POST["currentPicture"])) {
				$file_destination = $_POST["currentPicture"];
				$file_new_name = $file_destination;
			}

			if (!empty($_FILES['siteLogo']['tmp_name'])) {

				//Delete Existing Site Logo
				if ($_POST['currentPicture'] != "") {
					unlink("../image_directory/site/" . $_POST['currentPicture']);
				}


				$file_che = $_FILES['siteLogo'];

				//file properties
				$file_name = $_FILES['siteLogo']['name'];
				$file_tem_name = $_FILES['siteLogo']['tmp_name'];
				$file_size = $_FILES['siteLogo']['size'];
				$file_error = $_FILES['siteLogo']['error'];

				//work with file extention
				$file_ext = explode('.', $file_name);
				$file_ext = strtolower(end($file_ext));
				//echo $file_name;die();
				$allow_file_extention = array(
					'jpeg', 'jpg', 'png'
				);

				if (in_array($file_ext, $allow_file_extention)) {
					if ($file_error === 0) {
						if ($file_size <= 2097152) {
							$file_new_name = uniqid('', true) . '.' . $file_ext;
							$file_destination = "../image_directory/site/" . $file_new_name;
							if (move_uploaded_file($file_tem_name, $file_destination)) {
								move_uploaded_file($file_tem_name, $file_destination);
							}
						}
					}
				}
			}





			$file_new_name1 = "";
			if (isset($_POST["currentPicture1"])) {
				$file_destination = $_POST["currentPicture1"];
				$file_new_name1 = $file_destination;
			}

			if (!empty($_FILES['siteFav']['tmp_name'])) {

				//Delete Existing Site Logo
				if ($_POST['currentPicture1'] != "") {
					unlink("../image_directory/site/" . $_POST['currentPicture1']);
				}


				$file_che = $_FILES['siteFav'];

				//file properties
				$file_name = $_FILES['siteFav']['name'];
				$file_tem_name = $_FILES['siteFav']['tmp_name'];
				$file_size = $_FILES['siteFav']['size'];
				$file_error = $_FILES['siteFav']['error'];

				//work with file extention
				$file_ext = explode('.', $file_name);
				$file_ext = strtolower(end($file_ext));
				//echo $file_name;die();
				$allow_file_extention = array(
					'jpeg', 'jpg', 'png'
				);

				if (in_array($file_ext, $allow_file_extention)) {
					if ($file_error === 0) {
						if ($file_size <= 2097152) {
							$file_new_name1 = uniqid('', true) . '.' . $file_ext;
							$file_destination = "../image_directory/site/" . $file_new_name1;
							if (move_uploaded_file($file_tem_name, $file_destination)) {
								move_uploaded_file($file_tem_name, $file_destination);
							}
						}
					}
				}
			}


			$table = 'website_settings';

			$data = array(
				'siteTitle' => $_POST["siteTitle"],
				'settingID' => $_POST["settingID"],
				'metaDescription' => $_POST["metaDescription"],
				'metaTag' => $_POST["metaTag"],
				'siteLogo' => $file_new_name,
				'siteFav' => $file_new_name1,
				'primaryPhone' => $_POST["primaryPhone"],
				'alterPhone' => $_POST["alterPhone"],
				'primaryMobile' => $_POST["primaryMobile"],
				'alterMobile' => $_POST["alterMobile"],
				'faxNo' => $_POST["faxNo"],
				'email' => $_POST["email"],
				'address' => $_POST["address"],

				'office_address' => $_POST["office_address"],


				'footerText' => $_POST["footerText"],
				'facebook' => $_POST["facebook"],
				'twitter' => $_POST["twitter"],
				'linkedin' => $_POST["linkedin"],
				'googlePlus' => $_POST["googlePlus"],
				'youtube' => $_POST["youtube"],
				'pinterest' => $_POST["pinterest"],
			);


			$request = MdlSetting::mdlEditSetting($table, $data);

			if ($request == 'ok') {

				echo '<script>
					swal({
						type: "success",
						title: "Setting edited successfully!",
						showConfirmButton: true,
						confirmButtonText: "Close"

					 }).then(function(result){
						
						if (result.value) {

							window.location = "view/setting/add-settings.php";
						}

					});
				
				</script>';
			} else {
				echo '<script>
					
					swal({
						type: "error",
						title: "No especial characters in the name or blank field",
						showConfirmButton: true,
						confirmButtonText: "Close"
						 }).then(function(result){
							if (result.value) {
								window.location = "view/setting/add-settings.php";
							}

						});
					
				</script>';
			}
		}
	}


	/*===================================
	Delete Product
=====================================*/

	static public function deleteService()
	{

		if (isset($_GET['serviceId'])) {
			$table = "services";
			$data = $_GET['serviceId'];

			//$request = UserModel::MdldeleteUser($table,$data);
			$request = MdlService::mdlDeleteService($table, $data);

			if ($request == "ok") {

				echo '<script>

				swal({
					  type: "success",
					  title: "The Service has been succesfully deleted",
					  showConfirmButton: true,
					  confirmButtonText: "Close"

					  }).then(function(result){
					  	
						if (result.value) {

						window.location = "view/service/service-index.php";

						}
					})

				</script>';
			}
		}
	}
}
