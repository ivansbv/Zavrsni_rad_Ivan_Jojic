
$(document).ready(function(){ 
	$("#header div:gt(0)").hide();
	setInterval(function() { 
	  $('#header div:first')
	    .fadeOut(1500)
	    .next()
	    .fadeIn(1500)
	    .end()
	    .appendTo('#header');
	},  4000);
});