
if(drawLight == true) {
	
	draw_set_alpha(nightColor);
	draw_rectangle_color(0, 0, VPWidth, VPHeight, lightColor, lightColor, lightColor, lightColor, false)
	draw_set_alpha(1);
}

