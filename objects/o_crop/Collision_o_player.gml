if(fullyGrown) {
	
	if(!keyboard_check(ord("K"))) { exit;}

	
	var cs = o_cropManager.cellSize;
    var xx1 = x div cs;
    var yy1 = y div cs

	var iGrid = o_cropManager.crops_instances;			
	var inst = instance_place(xx1, yy1, o_crop);	
	
	#region ADD TO INVENTORY 
	
	var in = cropType + 1;
	
	with(o_inventory) {
		var invGrid = ds_inventory;
		var isPickedUp = false;
		
		//Does it exist in inventory
		var i = 0; repeat(invSlots) {
			if(invGrid[# 0, i] == in) {
				invGrid[# 1, i] += 1;
				isPickedUp = true;
				break;
			} else {
				i += 1;
			}
		}
		
		//Add if space
		if(!isPickedUp) {
			var i = 0; repeat(invSlots) {
				if(invGrid[# 0, i] == item.none) {
					invGrid[# 0, i] = in;
					invGrid[# 1, i] += 1;
					
					isPickedUp = true;
					break;
				} else {
					i += 1;
				}
			}
		}
		
	}	
	
	//Destroy picked up
	if(isPickedUp) {
		
		XPGain(6);
		//Create notification
		if(!instance_exists(o_notification)) {
			instance_create_layer(0, 0, "Player", o_notification)
		}
							
		var in = cropType + 1;
							
		with(o_notification) {
			if(!ds_exists(ds_notifs, ds_type_grid)) {
				ds_notifs = ds_grid_create(2, 1);
				var notifGrid = ds_notifs;
				notifGrid[# 0, 0] = 1
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
						notifGrid[# 0, i] += 1;
						inGrid = true;
						break;
					} 
									
					i++;
				}
									
									
				if(!inGrid) {
					ds_grid_resize(notifGrid, 2, gridHeight + 1)
					notifGrid[# 0, gridHeight] = 1
					notifGrid[# 1, gridHeight] = o_inventory.itemInfo[# 0, in];	
									
				}
									
									
									
			}
								
		}
		
		
		//DO THE REST OF THE STUFF
		iGrid[# xx1, yy1] = inst;				
		instance_destroy();			
		iGrid[# xx1, yy1] = 0;
		show_debug_message("Picked up item");
		audio_play_sound(a_pickup, 2, false)
	}
	
	#endregion
			
	


}
