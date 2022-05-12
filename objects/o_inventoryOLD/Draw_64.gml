if(inventory) {
	
	frame += image_speed/2.5;
	if(frame >= 6) {
		frame = 6;
	}
	
	draw_sprite_stretched(s_inventoryAnim, frame, UIX, UIY, 128*scale, 165*scale)
	
	//----------TOP----------
	/*
	draw_set_font(f_main_big)
	var color = c_white
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_text_color(infoX, infoY, global.playerName, color, color, color, color, 1)
	*/
	
	
	if(frame >= 6) {
		
		//VARIABLES
		var xx;
		var yy;
		var iitem;
		var iGrid = ds_inventory;
		
		
		//----------SLOTS----------
		for(var i = 0; i < slots; i++) {
			var xx1 = -12 + (i mod rowLength) * 90 + 1;
			var yy1 = 240 + (i div rowLength) * 90 + 1;
			
			
			xx = xx1 + 30
			yy = yy1 + 30
			
			//Item
			iitem = iGrid[# 0, i];
			spriteX = (iitem mod invColumns)*boxSize
			spriteY = (iitem div invColumns)*boxSize
			
			
			//Slot
			draw_sprite_stretched(s_slot, 0, xx1, yy1, 128, 128);
			
			//Draw item 
			
			switch(i) {
				case selected:
					if(iitem > 0) {
								draw_sprite_part_ext(
								invItems, 0, 
								spriteX, spriteY, boxSize, boxSize,
								xx, yy, 4, 4, 
								c_white, 1
							);
						} 
					gpu_set_blendmode(bm_add);	
					draw_sprite_ext(s_slot, 0, xx1, yy1, 3.8, 3.8, 0, c_white, 0.3);
					gpu_set_blendmode(bm_normal);	
					break;
				
				default:
					if(iitem > 0) {
							draw_sprite_part_ext(
							invItems, 0, 
							spriteX, spriteY, boxSize, boxSize,
							xx, yy, 4, 4, 
							c_white, 1
						);
					} 
					break;
			}
			//Item number
			if (iitem > 0) {
				var num = iGrid[# 1, i];
				draw_text_color(xx + 66, yy + 58, string(num), c_black, c_black, c_black, c_black, 1);
			}
			
		}
		
		//ITEMS
		
	}
	
} 

if(!inventory) {
	frame = 0;
}
