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

/*=========================================

edit user
===========================================*/

$(document).on("click", ".btnEditProduct", function(){
	var idProduct = $(this).attr('idProduct');
	//console.log('idProduct',idProduct);
	var data = new FormData();

	data.append('idProduct',idProduct);

	$.ajax({

		url:"view/ajax-request-files/productAjax.php",
		method:"POST",
		data:data,
		dataType:"json",
		cache:false,
		contentType:false,
		processData:false,
		success:function(response){
			console.log('response',response);
			 $('#editProductName').val(response['productTitle']);
			 tinyMCE.activeEditor.setContent(response['productDetails']);
			 $('#editProductPrice').val(response['productPrice']);
			// $('#edit_roleProfile').html(response['role_profile']);

			 $('#ProductID').val(response['productID']);
			// $('#edit_roleProfile').val(response['role_profile']);
			// $('#currentPasswd').val(response['password']);
			// $('#currentPicture').val(response['photo']);

			if(response['productImage'] != ""){
				var picstartString = response['productImage'];
				var pic = picstartString.replace("../../", "");
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

$(".btnDeleteProduct").click(function(){

	let productId = $(this).attr("productId");
	let productname = $(this).attr("productname");
	let productPhoto = $(this).attr("productPhoto");
	//console.log(clientId);
	
	swal({
		title: 'Are you sure you want to delete the user?',
		text: "if you're not sure you can cancel!",
		type: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  cancelButtonText: 'Cancel',
		  confirmButtonText: 'Yes, delete user!'
		}).then(function(result){

		if(result.value){

		  window.location = "view/products/product-index.php?route=productId&productId="+productId+"&productname="+productname+"&productPhoto="+productPhoto;

		}

	})
});


/*=========================================

Active / Dective product
===========================================*/
 $(document).on('click','.btnActivate',function(){
 	var productId = $(this).attr("productId");
	var productStatus = $(this).attr("productStatus");
 	//console.log(productId,productStatus);

 	var data = new FormData();
 	data.append("productId", productId);
  	data.append("productStatus", productStatus);

 	$.ajax({
 		url:"view/ajax-request-files/productAjax.php",
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

 	if(productStatus == 0){

  		$(this).removeClass('btn-success');
  		$(this).addClass('btn-danger');
  		$(this).html('Deactivated');
  		$(this).attr('productStatus',1);

  	}else{

  		$(this).addClass('btn-success');
  		$(this).removeClass('btn-danger');
  		$(this).html('Activated');
  		$(this).attr('productStatus',0);

  	}

 });





