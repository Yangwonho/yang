/* js/reservation.js */

function rentOkView() {
	var register_no = $("#register_no").val();
	var url = '/root/place/rentOkPlaceView?register_no='+register_no;
	var popOpt = 'width=600px, height=300px, top=300px, left=1200px';
	
	window.open(url,'pop',popOpt);
	
}


function placeRegist() {
	var place_no = $("#place_no").val();
	var register_no = $("#register_no").val().trim();
	window.opener.location.href="../reservation/ticketingRegister?write_no="+register_no+"&place_no="+place_no;
	window.close();
	
}