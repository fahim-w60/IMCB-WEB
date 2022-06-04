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

	}else if(img['size'] > 6000000){
		$(".newPics").val("");
		swal({
		  type: "error",
		  title:"OPPS!error",
		  text: "image size should be under 6MB",
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

/*=========================================

edit service
===========================================*/

$(document).on("click", ".btnEditService", function(){
	var idservice = $(this).attr('idservice');
	//console.log('idservice',idservice);
	var data = new FormData();

	data.append('idservice',idservice);

	$.ajax({

		url:"view/ajax-request-files/serviceAjax.php",
		method:"POST",
		data:data,
		dataType:"json",
		cache:false,
		contentType:false,
		processData:false,
		success:function(response){
			console.log('response',response);
			 $('#serviceName').val(response['serviceName']);
			 tinyMCE.get('shortNote').setContent(response['serviceShortNote']);
			 
			tinyMCE.get('serviceDetails').setContent(response['serviceDetails']);
			 $('#serviceIcon').val(response['serviceIcon']);
			 $('#serviceID').val(response['servicesID']);
			 $('#currentPicture').val(response['serviceImage']);
			 var serviceImage = response['serviceImage'];
			 if (response['serviceImage'] != ""){
                 $('#link').html("<a href='image_directory/services/"+serviceImage+"' target='_blank'>Previous</a>");
			 }

		},
		error:function(text){
			console.log(text.responseText);
		}

	});
});



/*===============================
Delete Service ...
================================*/

$(".btnDeleteService").click(function(){

	let serviceId = $(this).attr("serviceId");
	//let sliderMainCaption = $(this).attr("sliderMainCaption");
	//let sliderPhoto = $(this).attr("sliderPhoto");
	//console.log(serviceId);
	
	swal({
		title: 'Are you sure you want to delete this service ?',
		text: "if you're not sure you can cancel!",
		type: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  cancelButtonText: 'Cancel',
		  confirmButtonText: 'Yes, Delete !'
		}).then(function(result){

		if(result.value){

		  window.location = "view/service/service-index.php?route=serviceId&serviceId="+serviceId;

		}

	})
});


/*=========================================

Active / Dective Slider
===========================================*/
 $(document).on('click','.btnActivate',function(){
 	var serviceId = $(this).attr("serviceId");
	var serviceStatus = $(this).attr("serviceStatus");
 	//console.log(serviceId,serviceStatus);

 	var data = new FormData();
 	data.append("serviceId", serviceId);
  	data.append("serviceStatus", serviceStatus);

 	$.ajax({
 		url:"view/ajax-request-files/serviceAjax.php",
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

 	if(serviceStatus == 0){

  		$(this).removeClass('btn-success');
  		$(this).addClass('btn-danger');
  		$(this).html('Deactivated');
  		$(this).attr('serviceStatus',1);

  	}else{

  		$(this).addClass('btn-success');
  		$(this).removeClass('btn-danger');
  		$(this).html('Activated');
  		$(this).attr('serviceStatus',0);

  	}

 });





