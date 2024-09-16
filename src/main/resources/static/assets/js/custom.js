//dismissing the alert after 5 seconds
setTimeout(function () {
	$('.myalert').fadeOut('slow');
}, 5000);


$(function() {
	
	// solving the active menu problem
	switch (menu) {
	
	case 'Home':
		$('#home').addClass('active');
		break;

	case 'About Us':
		$('#about').addClass('active');
		break;
		
	case 'Our Clients':
		$('#clients').addClass('active');
		break;
	
	case 'Login':
		$('#login').addClass('active');
		break;
	
	case 'Contacts':
		$('#contact').addClass('active');
		break;	
		
	default:
		$('#Home').addClass('active');
		break;
	}
});

/*default:
$('#listproducts').addClass('active');
$('#a_' + menu).addClass("active");
break;*/