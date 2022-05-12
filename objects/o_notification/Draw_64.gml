draw_set_halign(fa_left)
draw_set_valign(fa_left)
var notifGrid = ds_notifs;
var gridHeight = ds_grid_height(notifGrid);
draw_set_font(font);


var i = 0; repeat(gridHeight) {

	if(!global.shoppingMode) {
		var notifSign = "";

		if(notifGrid[# 0, i] > 0) {
			notifSign = "+";
		}
	
		draw_text_color(
			50, (guiHeight -50) + (i * fontHeight) - (gridHeight * fontHeight), 
			notifSign + string(notifGrid[# 0, i]) + " " + string(notifGrid[# 1, i]),
			c_white, c_white, c_white, c_white, notifAlpha	
		);
	} else if (global.shoppingMode) {
		draw_text_color(
			50, (guiHeight -50) + (i * fontHeight) - (gridHeight * fontHeight), 
			"Sold " + string(notifGrid[# 0, i]) + " " + string(notifGrid[# 1, i]),
			c_white, c_white, c_white, c_white, notifAlpha	
		);
		

	}


	i++;
}


if(fadeOut) {
	notifAlpha -= 0.1;
}

if(notifAlpha <= 0) {
	instance_destroy();
}
