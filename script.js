$(function(){
	$("#sidebar").load("sidebar.html");
	$("#footer").load("footer.html"); 
});

var open="";

function menu() {
	if(open) {
		closeMenu();
	} else {
		openMenu();
	}
};

$(document).ready(function() {
	$('.content').click(function() {
		if(open) {
		    document.getElementById('hamburger-button').click();
		    }
	});
});

function openMenu() {
	open=true;
	setTimeout(function() {
		$('.sidebar').css('width','22vw'); 
		$('.sidebar-container').css('width','22vw');
		$('.sidebar').css('box-shadow','0.4vw 0vw 5vw');
		$('.sidebar-container').css('box-shadow','none');
	}, 200);
	setTimeout(function() { 
		$('.menu').css('display','block'); 
		$('.nav').css('display','block'); 
		$('.nav').css('position','absolute'); 
		$('.nav').css('margin-left','17vw'); 
		$('.nav-image').css ('padding','0');
	}, 250);
};

function closeMenu() {
	open=false;
	setTimeout(function() { 
		$('.sidebar-container').css('box-shadow','inset 0vw -0.5vw 15vw 1vw rgb(242, 242, 242)');
		$('.sidebar').css('box-shadow','none');
	}, 150);
	setTimeout(function() { 
		$('.sidebar').css('width','5vw');
		$('.sidebar-container').css('width','5vw'); 
	}, 200);
	setTimeout(function() { 
		$('.menu').css('display','none');
		$('.nav').css('position','relative');
		$('.nav').css('margin','0');
	}, 250);
};

function css( element, property ) {
    return window.getComputedStyle( element, null ).getPropertyValue( property );
};