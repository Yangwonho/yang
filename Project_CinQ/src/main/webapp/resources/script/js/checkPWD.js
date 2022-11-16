/* js/checkRegister.js */

function checkID() {
   var id = $("#id").val();
   if(id ==""){
      $('#idLabel1').css('display','none');
      $('#idLabel2').css('display','block');
      $('#idLabel3').css('display','none');
   } else {
         $.ajax({ 
            url : "idCheck",
            data :{id : id},
            type : "post",
            success : function(cnt){
               if(cnt == 0) {
                  $('#idLabel1').css('display','none');
                  $('#idLabel2').css('display','none');
                  $('#idLabel3').css('display','block');
                  
               } else {
               	  $('#idLabel1').css('display','block');
               	  $('#idLabel2').css('display','none');
                  $('#idLabel3').css('display','none');               		   
               }
            }, error : function() {
               alert("서버요청실패");
            }
         });
      
   }
   
}


function checkEmail() {
	var id = $("#id").val();
	var email = $("#email").val();
	if(email ==""){
		$('#emailLabel1').css('display','block');
		$('#emailLabel2').css('display','none');
		$('#emailLabel3').css('display','none');
	}  $.ajax({ 
            url : "emailCheck",
            data :{id : id, email : email},
            type : "post",
            success : function(cnt){
               if(cnt == 0) {
                  $('#emailLabel1').css('display','none');
                  $('#emailLabel2').css('display','none');
                  $('#emailLabel3').css('display','block');
                  
               } else {
               	  $('#emailLabel1').css('display','block');
               	  $('#emailLabel2').css('display','none');
                  $('#emailLabel3').css('display','none');               		   
               }
            }, error : function() {
               alert("서버요청실패");
            }
         });
	
}
