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

$(document).on('click','.btnEditPartner',function(){
	let idPartner = $(this).attr('idPartner');

	//alert(idPartner);

	let data = new FormData();

	data.append('idPartner',idPartner);

	$.ajax({

		url:"view/ajax-request-files/partnerAjax.php",
		method:"POST",
		data:data,
		dataType:"json",
		cache:false,
		contentType:false,
		processData:false,
		success:function(response){
			console.log('response',response);
			 $('#editPartnerName').val(response['partnerName']);
			 $('#editPartnerUrl').val(response['partnerUrl']);
                tinyMCE.activeEditor.setContent(response['partnerDetails']); 

			 $('#PartnerID').val(response['partnerID']);
			 $('#currentPicture').val(response['partnerImage']);

			if(response['partnerImage'] != ""){
                var pic = "image_directory/partners/"+response['partnerImage'];
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
Delete Partners ...
================================*/

$(".btnDeletePartner").click(function(){

	let partnerId = $(this).attr("partnerId");
	let partnername = $(this).attr("partnername");
	let partnerPhoto = $(this).attr("partnerPhoto");
	//console.log(clientId);
	
	swal({
		title: 'Are you sure you want to delete this partner ?',
		text: "if you're not sure you can cancel!",
		type: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  cancelButtonText: 'Cancel',
		  confirmButtonText: 'Yes, Delete !'
		}).then(function(result){

		if(result.value){

		  window.location = "view/partners/partners-index.php?route=partnerId&partnerId="+partnerId+"&partnername="+partnername+"&partnerPhoto="+partnerPhoto;

		}

	})
});


/*=========================================

Active / Dective partner
===========================================*/
 $(document).on('click','.btnActivate',function(){
 	var partnerId = $(this).attr("partnerId");
	var status = $(this).attr("status");
 	//console.log(partnerId,status);

 	var data = new FormData();
 	data.append("partnerId", partnerId);
  	data.append("status", status);

 	$.ajax({
 		url:"view/ajax-request-files/partnerAjax.php",
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