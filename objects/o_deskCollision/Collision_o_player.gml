exit;

if(keyboard_check_pressed(ord("T"))) {
	global.shoppingMode = !global.shoppingMode
	
	show_debug_message(string(global.goldStash))
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


