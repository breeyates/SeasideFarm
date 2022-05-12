exit;

var xx = 0;
var yy = 0;
var cs = o_cropManager.cellSize;

draw_set_alpha(0.3);

//Horizontal Lines
var r = roomWidth div cs; 
repeat (r) {
	draw_line_color(xx, 0, xx, roomHeight, c_white, c_white);
	xx += cs; 
}

//Vertical lines
var r = roomHeight div cs; 
repeat (r) {
	draw_line_color(0, yy, roomHeight, yy, c_white, c_white);
	yy += cs; 
}

draw_set_alpha(1);