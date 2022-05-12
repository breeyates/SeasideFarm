var playerX = o_player.x;
var playerY = o_player.y;
var radius = 25;



if(point_in_rectangle(playerX, playerY, x- radius, y - radius, x + radius, y + radius)) {
	show_debug_message("in radius");
	if(keyboard_check_pressed(ord("T"))) {
		global.shoppingMode = !global.shoppingMode	
		show_debug_message(string(global.goldStash))
	}
}


if(global.shoppingMode) {
	show_debug_message(string(global.shoppingMode))
	
	with(o_inventory) {
		inventory = true;
	}	
	
	with(o_player) {
		abletoMove = false;
	}
	
} 

if (!global.shoppingMode) {
	
	with(o_inventory) {
		inventory = false;
	}
	
	with(o_player) {
		abletoMove = true;
	}
	
}