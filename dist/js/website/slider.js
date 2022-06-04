/*===============================
image upload and valaditation
================================*/

$('.newPics').change(function(){
	var img = this.files[0];
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

edit user
===========================================*/

$(document).on("click", ".btnEditSlider", function(){
	var idslider = $(this).attr('idslider');
	//console.log('idslider',idslider);
	var data = new FormData();

	data.append('idslider',idslider);

	$.ajax({

		url:"view/ajax-request-files/sliderAjax.php",
		method:"POST",
		data:data,
		dataType:"json",
		cache:false,
		contentType:false,
		processData:false,
		success:function(response){
			console.log('response',response);
			 $('#editmainCaption').val(response['mainCaption']);
			 tinyMCE.activeEditor.setContent(response['subCaption']);
			 $('#sliderID').val(response['sliderID']);
			 $('#currentPicture').val(response['slideImage']);

			if(response['slideImage'] != ""){
                var pic = "image_directory/sliders/"+response['slideImage'];
				$('.preview').attr('src',pic);
			}
		},
		error:function(text){
			console.log(text.responseText);
		}

	});
});



/*===============================
Delete Product ...
================================*/

$(".btnDeleteSlider").click(function(){

	let sliderId = $(this).attr("sliderId");
	let sliderMainCaption = $(this).attr("sliderMainCaption");
	let sliderPhoto = $(this).attr("sliderPhoto");
	//console.log(clientId);
	
	swal({
		title: 'Are you sure you want to delete this slider ?',
		text: "if you're not sure you can cancel!",
		type: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  cancelButtonText: 'Cancel',
		  confirmButtonText: 'Yes, Delete !'
		}).then(function(result){

		if(result.value){

		  window.location = "view/slider/slider-index.php?route=sliderId&sliderId="+sliderId+"&sliderMainCaption="+sliderMainCaption+"&sliderPhoto="+sliderPhoto;

		}

	})
});


/*=========================================

Active / Dective Slider
===========================================*/
 $(document).on('click','.btnActivate',function(){
 	var sliderId = $(this).attr("sliderId");
	var slideStatus = $(this).attr("slideStatus");
 	//console.log(sliderId,slideStatus);

 	var data = new FormData();
 	data.append("sliderId", sliderId);
  	data.append("slideStatus", slideStatus);

 	$.ajax({
 		url:"view/ajax-request-files/sliderAjax.php",
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

 	if(slideStatus == 0){

  		$(this).removeClass('btn-success');
  		$(this).addClass('btn-danger');
  		$(this).html('Deactivated');
  		$(this).attr('slideStatus',1);

  	}else{

  		$(this).addClass('btn-success');
  		$(this).removeClass('btn-danger');
  		$(this).html('Activated');
  		$(this).attr('slideStatus',0);

  	}

 });





