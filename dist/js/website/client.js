/*===============================
image upload and valaditation
================================*/

$('.newPics').change(function(){
	var img = this.files[0];
	//console.log('img',img);
	//var imgType = img['type'];
	//console.log(imgType);
	//var img['type'] = imgType.toLowerCase();
	//console.log(imgTolower);
	if(img['type'] != "image/jpeg" && img['type'] != "image/jpg" &&  img['type'] != "image/png"){
		$(".newPics").val("");
		swal({
		  type: "error",
		  title: "OPPS!error",
		  text:"image should be jpeg or jpg or png",
		  showConfirmButton: true,
		  confirmButtonText: "Close"
		});

	}else if(img['size'] > 2000000){
		$(".newPics").val("");
		swal({
		  type: "error",
		  title:"OPPS!error",
		  text: "image size should be under 2MB",
		  showConfirmButton: true,
		  confirmButtonText: "Close"
		});

	}else{
		var dataImage = new FileReader;
		dataImage.readAsDataURL(img);
		$(dataImage).on('load',function(event){
			var rootImage = event.target.result;
			$('.preview').attr('src',rootImage);
		});
	}
});

/*===============================
eidt client
================================*/

$(document).on('click','.btnEditClient',function(){
	let idClient = $(this).attr('idClient');

	//alert(idClient);

	let data = new FormData();

	data.append('idClient',idClient);

	$.ajax({

		url:"view/ajax-request-files/clientAjax.php",
		method:"POST",
		data:data,
		dataType:"json",
		cache:false,
		contentType:false,
		processData:false,
		success:function(response){
			console.log('response',response);

			//alert(response);
			 $('#editClientName').val(response['clientName']);
			 //$('#editclientDet').html(response['clientDetails']);
			 $('#editClientUrl').val(response['clientUrl']);
			 //$('#editclientDet').html(response['clientUrl']);
			 //$("#editclientDet").empty(); 
                tinyMCE.activeEditor.setContent(response['clientDetails']); 

			 $('#ClientID').val(response['clientID']);
			// $('#edit_roleProfile').val(response['role_profile']);
			// $('#currentPasswd').val(response['password']);
			 $('#currentPicture').val(response['clientImage']);

			if(response['clientImage'] != ""){
				var pic = "image_directory/clients/"+response['clientImage'];
				//console.log(pic);
				$('.preview').attr('src',pic);
			}


			
		},
		error:function(txt)
		{
			console.log(txt.responseText);
		}

	});

});

/*===============================
Delete Clients ...
================================*/

$(".btnDeleteClient").click(function(){

	let clientId = $(this).attr("clientId");
	let clientname = $(this).attr("clientname");
	let clientPhoto = $(this).attr("clientPhoto");
	//console.log(clientId);
	
	swal({
		title: 'Are you sure you want to delete this client ?',
		text: "if you're not sure you can cancel!",
		type: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  cancelButtonText: 'Cancel',
		  confirmButtonText: 'Yes, Delete !'
		}).then(function(result){
		if(result.value){
		  window.location = "view/clients/client-index.php?route=clientId&clientId="+clientId+"&clientname="+clientname+"&clientPhoto="+clientPhoto;
		}

	})
});



/*=========================================

Active / Dective client
===========================================*/
 $(document).on('click','.btnActivate',function(){
 	var clientId = $(this).attr("clientId");
	var status = $(this).attr("status");
 	//console.log(clientId,status);

 	var data = new FormData();
 	data.append("clientId", clientId);
  	data.append("status", status);

 	$.ajax({
 		url:"view/ajax-request-files/clientAjax.php",
 		method:"POST",
 		data:data,
		cache:false,
		contentType:false,
		processData:false,
		success:function(response){
			console.log(response);
		},
		error:function(text){
			console.log(text.responseText);
		}

 	});

 	if(status == 0){

  		$(this).removeClass('btn-success');
  		$(this).addClass('btn-danger');
  		$(this).html('Deactivated');
  		$(this).attr('status',1);

  	}else{

  		$(this).addClass('btn-success');
  		$(this).removeClass('btn-danger');
  		$(this).html('Activated');
  		$(this).attr('status',0);

  	}

 });