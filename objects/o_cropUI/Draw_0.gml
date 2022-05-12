
if(o_cropManager.planting) {
	
	draw_sprite_stretched(s_cropUI, 0, o_player.x - 50, o_player.y - 72.5, 101, 56);
	
	
	for(var i = 0; i < islots; i++) {
		//slots
		var xx = (o_player.x - 50) + (i mod rowLength) * 12 + 12;
		var yy = (o_player.y - 72) + (i div rowLength) * 13 + 12;
	
		//crops
		var xx2 = (o_player.x - 50) + (i mod rowLength) * 12 + 15;
		var yy2 = (o_player.y - 72) + (i div rowLength) * 15 + 15;
		
		//draw_sprite_stretched(s_slot, 0, xx, yy, 16, 16);
		
		draw_set_font(f_main)
		draw_set_color(make_color_rgb(80 ,62, 84))

		draw_text_transformed(xx2 + 6, yy2 - 0.6, string(i), .2, .2, 0)

		
		
		if(cropInventory[i] != -1) {
			draw_sprite_stretched(s_cropsInventory, cropInventory[i], xx2, yy2 + 1, 11, 11); 
		} else {
			draw_sprite_stretched(s_slot, 0, xx, yy + 1, 16, 16);
		}
		
		
	}

}

