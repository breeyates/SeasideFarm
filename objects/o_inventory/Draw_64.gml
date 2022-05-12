
if(inventory) {
	//INVENTORY UI
	draw_sprite_part_ext(invUI, 0, 0, 0, invUIWidth, invUIHeight, invUIX, invUIY, scale, scale, c_white, 1);
	
	//LOCAL VARIABLES
	var ii = 0 //Current item
	var ix = 0 //Column
	var iy = 0 //Row
	var xx
	var yy
	var iitem
	var inv_grid = ds_inventory
	var sx
	var sy
	
	repeat(invSlots) {
		//Get item location
		xx = slotsX + ((cellSize + xBuffer) * ix * scale);
		yy = slotsY + ((cellSize + yBuffer) * iy * scale);
		
		//Get item
		iitem = inv_grid[# 0, ii]
		sx = (iitem mod invItemsColumns) * cellSize;
		sy = (iitem div invItemsColumns) * cellSize;
		
		//Draw slot
		draw_sprite_part_ext(
			slot, 0, 0, 0, cellSizeSlot, cellSizeSlot, xx, yy, scale, scale, c_white, 1
		);
		
		//Draw Item
		
		switch(ii) {
			
		case selected:
			if(iitem > 0) {
					draw_sprite_part_ext(
						invItems, 0, sx, sy, cellSize, cellSize, xx + 1, yy + 1, scale, scale, c_white, 1
					);
					
					gpu_set_blendmode(bm_add);
					draw_sprite_part_ext(
						slot, 0, 0, 0, cellSizeSlot, cellSizeSlot, xx, yy, scale, scale, c_white, 0.3
					);
					gpu_set_blendmode(bm_normal);
				}
			break;
			
		case pickedUp:
			if(iitem > 0) {
					draw_sprite_part_ext(
						invItems, 0, sx, sy, cellSize, cellSize, xx + 1, yy + 1, scale, scale, c_white, 0.2
					);
			}
			break;
			
		default:
			if(iitem > 0) {
					draw_sprite_part_ext(
						invItems, 0, sx, sy, cellSize, cellSize, xx + 1, yy + 1, scale, scale, c_white, 1
					);
				}
			break;
		}


		//Item amount
		if(iitem > 0) {
			var num = inv_grid[# 1, ii]
			draw_text_color(xx + 43, yy + 45, string(num), 
			c_black, c_black, c_black, c_black, 1);
		}
		
		ii++
		ix = ii mod invSlotsWidth
		iy = ii div invSlotsWidth
		
		
	}
	
	
	//Item descriptions
	var infoGrid = itemInfo;
	var description = "";
	var iitem = inv_grid[# 0, selected];
	
	if(iitem > 0) {
		
		draw_set_font(f_main_small2);
		draw_set_halign(fa_left);
		
		description = infoGrid[# 0, iitem] + ". \n" + infoGrid[# 1, iitem];
		
		c = c_black;
		
		draw_text_ext_color(descX, descY + 10, description, string_height("W") + 10, (invUIWidth*scale) - (xBuffer*2), c, c, c, c, 1);
	}
	
	
	if(pickedUp != -1) {
		
		iitem = inv_grid[# 0, pickedUp]
		sx = (iitem mod invItemsColumns) * cellSize;
		sy = (iitem div invItemsColumns) * cellSize;

		draw_sprite_part_ext(invItems, 0, sx, sy, cellSize, cellSize, mx, my, scale, scale, c_white, 1);
		
		var itemNum = inv_grid[# 1, pickedUp];
		draw_text_color(mx+57, my+50, string(itemNum), c_black, c_black, c_black, c_black, 1);
		
	}
	
	
}