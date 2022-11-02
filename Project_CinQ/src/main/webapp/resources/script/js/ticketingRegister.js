/* js/reservation.js */

function registOkView() {
	var url = '/root/place/registOkPlaceView';
	var popOpt = 'width=600px, height=300px, top=300px, left=1200px';

	window.open(url,'pop',popOpt);
	
}


function placeRegist() {
	var place_no = $("#place_no").val();
	window.opener.location.href="../reservation/ticketingRegister";
	window.close();
}