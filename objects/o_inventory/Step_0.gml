if(global.playerLevel >= 1 and global.playerLevel < 5) {
	invSlots = 9;
} else if (global.playerLevel >= 5 and global.playerLevel < 10) {
	invSlots = 18;
} else if (global.playerLevel >= 10) {
	invSlots = 27;
}


if(keyboard_check_pressed(ord("I"))) {
	inventory = !inventory
}

var createNotif = false;

if(inventory) {
	
	#region Mouse
	//var invMouseXOffset = 66
	
	//Mouse relative to GUI
	mx = device_mouse_x_to_gui(0);
	my = device_mouse_y_to_gui(0);
	
	var cellxBuffer = ((cellSizeSlot + 3) * scale);
	var cellyBuffer = (cellSizeSlot + 4) * scale;
	
	//Mouse relative to inventory slots
	var invMouseX = mx - slotsX 
	var invMouseY = my - slotsY 
	
	var numX = invMouseX div cellxBuffer
	var numY = invMouseY div cellyBuffer
	
	var mouseInInv = true;
	//Only do this if inside inventory
	if(numX >= 0 and numX < invSlotsWidth and numY >= 0 and numY < invSlotsHeight) {
		
		//Checks to see if mouse is in between slots
		var sx = invMouseX - (numX * cellxBuffer);
		var sy = invMouseY - (numY * cellyBuffer);
		
		if((sx < cellSize * scale) and (sy < cellSize * scale)) {
			mSlotX = numX; 
			mSlotY = numY;
		}
	} else {
		//Drop out items
		var mouseInInv = false;
	}
	
	//Set the selected spot
	selected = min(invSlots - 1, mSlotX + (mSlotY * invSlotsWidth))
	
	//TESTING
	//show_debug_message("CELL X BUFFER  " + string(cellxBuffer))
	//show_debug_message("CELL Y BUFFER " + string(cellyBuffer))
	#endregion

	if(!global.shoppingMode) {
		//ITEM PICKUP / DRAGGING	
		var invGrid = ds_inventory;
		var selectedSlotItem = invGrid[# 0, selected];

		if(pickedUp != -1) {	
			if(mouse_check_button_pressed(mb_left)) {
					if(!mouseInInv) {
					
						//Drop into world				
				
						var pItem = invGrid[# 0, pickedUp];
						var in = pItem;
						
						invGrid[# 1, pickedUp] -= 1;
						
						createNotif = true;
				
						//destroy the item if it was the last one
						if(invGrid[# 1, pickedUp] == 0) {
							invGrid[# 0, pickedUp] = item.none;
							pickedUp = -1;
						}
				
						//create item in the game
						var inst = instance_create_layer(o_player.x, o_player.y, "Objects", o_item);				
						with(inst) {
							iNum = pItem;
							xFrame = iNum mod (sWidth / cellSize);
							yFrame = iNum div (sWidth / cellSize);
							itemSprite = s_inventoryItemsGround;
						}
				
					
					} else if(selectedSlotItem == item.none) {
						//Moving it into empty slot
						invGrid[# 0, selected] = invGrid[# 0, pickedUp];
						invGrid[# 1, selected] = invGrid[# 1, pickedUp];
					
						invGrid[# 0, pickedUp] = item.none;
						invGrid[# 1, pickedUp] = 0;
					
						pickedUp = -1;
					
					} else if (selectedSlotItem == invGrid[# 0, pickedUp]) {
						//Stacking items
						//CORRECT types
						if(selected != pickedUp) {
							invGrid[# 1, selected] += invGrid[# 1, pickedUp];
							invGrid[# 0, pickedUp] = item.none;
							invGrid[# 1, pickedUp] = 0;
						
						}
					
						pickedUp = -1;
					
					} else {
						//WRONG types - SWAP THEM
						var selectedSlotItemNum = invGrid[# 1, selected]
					
						invGrid[# 0, selected] = invGrid[# 0, pickedUp];
						invGrid[# 1, selected] = invGrid[# 1, pickedUp];
					
						invGrid[# 0, pickedUp] = selectedSlotItem;
						invGrid[# 1, pickedUp] = selectedSlotItemNum;
					
						//pickedUp = -1;
					}		
				}		
		} else if(selectedSlotItem != item.none) {
				//show_debug_message("MADE IT");
				//--------Drop item into world----------
				if(mouse_check_button_pressed(mb_middle)) {
					
					createNotif = true;
					var in = invGrid[# 0, selected];
				
					show_debug_message("Item dropped");
				
					invGrid[# 1, selected] -= 1;
				
					//destroy the item if it was the last one
					if(invGrid[# 1, selected] == 0) {
						invGrid[# 0, selected] = item.none;
					}
				
					//create item in the game
					var inst = instance_create_layer(o_player.x, o_player.y, "Objects", o_item);				
					with(inst) {
						iNum = selectedSlotItem;
						//show_debug_message(string(selectedSlotItem));
						xFrame = iNum mod (sWidth / cellSize);
						yFrame = iNum div (sWidth / cellSize);
						itemSprite = s_inventoryItemsGround;
					}
				
				}
			
				//--------Drop into new slot--------
				if(mouse_check_button_pressed(mb_right)) {
					pickedUp = selected;
					show_debug_message("selected item")
				}
			}
	} else if(global.shoppingMode) {
		
		var invGrid = ds_inventory;
		var selectedSlotItem = invGrid[# 0, selected];
		var in;
		
		if(mouse_check_button_pressed(mb_right)) {
			//pickedUp = selected;
			
			sellItem(selected);
			
			if(invGrid[# 0, selected] != item.none) {
				in = invGrid[# 0, selected];
				XPGain(5);
				createNotif = true;
			}
			
			//Remove one of the item
			invGrid[# 1, selected] -= 1;
			if(invGrid[# 1, selected] == 0) {
				invGrid[# 0, selected] = item.none;
				selected = -1;
			}
			
			sellItem(selected);
			show_debug_message("sold item")
		}
		
	}
	

} 

#region notification
//Create notification 

if(createNotif) {
	if(!instance_exists(o_notification)) {
		instance_create_layer(0, 0, "Player", o_notification)
	}
							
							
	with(o_notification) {
		if(!ds_exists(ds_notifs, ds_type_grid)) {
			ds_notifs = ds_grid_create(2, 1);
			var notifGrid = ds_notifs;
			notifGrid[# 0, 0] = -1
			notifGrid[# 1, 0] = o_inventory.itemInfo[# 0, in];	
		} else {
			//Add it
			event_perform(ev_other, ev_user0);
									
									
			var notifGrid = ds_notifs;
			var gridHeight = ds_grid_height(notifGrid);
			var name = o_inventory.itemInfo[# 0, in];	
			var inGrid = false;
									
			var i = 0; repeat(gridHeight) {
									
				if(name == notifGrid[# 1, i]) {
					notifGrid[# 0, i] -= 1;
					inGrid = true;
					break;
				} 
									
				i++;
			}
									
									
			if(!inGrid) {
				ds_grid_resize(notifGrid, 2, gridHeight + 1)
				notifGrid[# 0, gridHeight] = -1
				notifGrid[# 1, gridHeight] = o_inventory.itemInfo[# 0, in];	
									
			}
									
									
									
		}
	}
}
	
	

#endregion