


/*===============================
Delete director ...
================================*/

$(".btnDeleteDirector").click(function(){

	let directortId = $(this).attr("directortId");
	let directorname = $(this).attr("directorname");
	let directorPhoto = $(this).attr("directorPhoto");
	//console.log(clientId);
	
	swal({
		title: 'Are you sure you want to delete the director?',
		text: "if you're not sure you can cancel!",
		type: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  cancelButtonText: 'Cancel',
		  confirmButtonText: 'Yes, delete director information !'
		}).then(function(result){

		if(result.value){
		  window.location = "view/directors/director-index.php?route=directortId&directortId="+directortId+"&directorname="+directorname+"&directorPhoto="+directorPhoto;
		}
	})
});








