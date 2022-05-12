if(keyboard_check_pressed(ord("I"))) {
	inventory = !inventory
}


if(inventory) {
	
	mx = device_mouse_x_to_gui(0);
	my = device_mouse_y_to_gui(0);
	
	var xbuffer = (boxSize - 1) * scale 
	var ybuffer = (boxSize - 1) * scale 
	
	var i_mx = mx + 12
	var i_my = my - 240
	
	var nx = i_mx div xbuffer
	var ny = i_my div ybuffer
	
	mslotX = nx
	mslotY = ny
	
	selected = mslotX + (mslotY*rowLength);

}