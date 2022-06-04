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


//attachment 

$('.newAttch').change(function(){
	var file = this.files[0];
	console.log('file',file);
	//var imgType = img['type'];
	//console.log(imgType);
	//var img['type'] = imgType.toLowerCase();
	//console.log(imgTolower);
	if(file['type'] != "application/pdf" && file['type'] != "application/doc" &&  file['type'] != "application/docx"){
		$(".newAttch").val("");
		swal({
		  type: "error",
		  title: "OPPS!error",
		  text:"File should be pdf or doc or docx",
		  showConfirmButton: true,
		  confirmButtonText: "Close"
		});

	}else if(file['size'] > 2000000){
		$(".newAttch").val("");
		swal({
		  type: "error",
		  title:"OPPS!error",
		  text: "File size should be under 2MB",
		  showConfirmButton: true,
		  confirmButtonText: "Close"
		});

	}else{
		var dataImage = new FileReader;
		dataImage.readAsDataURL(file);
		$(dataImage).on('load',function(event){
			var rootImage = event.target.result;
			$('.previewAtt').attr('src',rootImage);
		});
	}
});

/*=========================================

edit user
===========================================*/


$(document).on("click", ".btnEditNews", function(){
	var idNews = $(this).attr('idNews');
	//console.log('idNews',idNews);
	var data = new FormData();

	data.append('idNews',idNews);

	$.ajax({

		url:"view/ajax-request-files/newsAjax.php",
		method:"POST",
		data:data,
		dataType:"json",
		cache:false,
		contentType:false,
		processData:false,
		success:function(response){
			console.log('response',response);
			 $('#editNewsTitle').val(response['newsTitle']);
			 tinyMCE.get('editnewsDisc').setContent(response['newsDescription']);
			 tinyMCE.get('editnewsExcerpt').setContent(response['newsExcerpt']);
			 $('#editnewsType').val(response['newsType']);

			 $('#newsID').val(response['newsID']);
			 $('#currentPicture').val(response['FeaturedImage']);

			if(response['FeaturedImage'] != ""){
				var picstartString = response['FeaturedImage'];
				var pic = "image_directory/news/"+picstartString;
				$('.preview').attr('src',pic);
			}


			
		},
		error:function(text){
			console.log(text.responseText);
		}

	});
});








/*=========================================
delete news
===========================================*/

$(".btnDeleteNews").click(function(){

	let newsId = $(this).attr("newsId");
	let newsname = $(this).attr("newsname");
	let newsPhoto = $(this).attr("newsPhoto");
	console.log(newsId);
	
	swal({
		title: 'Are you sure you want to delete this news ?',
		text: "if you're not sure you can cancel!",
		type: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  cancelButtonText: 'Cancel',
		  confirmButtonText: 'Yes, Delete !'
		}).then(function(result){

		if(result.value){
		  window.location = "view/newes/news-index.php?route=newsId&newsId="+newsId+"&newsname="+newsname+"&newsPhoto="+newsPhoto;
		}

	})
});

/*=========================================

Active / Dective News
===========================================*/
 $(document).on('click','.btnActivate',function(){

 	var newsId = $(this).attr("newsId");
	var newsStatus = $(this).attr("newsStatus");
 	//console.log(newsId,newsStatus);

 	var data = new FormData();
 	data.append("newsId", newsId);
  	data.append("newsStatus", newsStatus);

 	$.ajax({
 		url:"view/ajax-request-files/newsAjax.php",
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

 	if(newsStatus == 0){

  		$(this).removeClass('btn-success');
  		$(this).addClass('btn-danger');
  		$(this).html('Deactivated');
  		$(this).attr('newsStatus',1);

  	}else{

  		$(this).addClass('btn-success');
  		$(this).removeClass('btn-danger');
  		$(this).html('Activated');
  		$(this).attr('newsStatus',0);

  	}

 });

