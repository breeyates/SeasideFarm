if(dropMove) {
	if(!spawnedItem) {
		x = lerp(x, xGoal, 0.1);
		y = lerp(y, yGoal, 0.1);
	} else {
		x = xGoal
		y = yGoal
	}
	
	if(abs(x-xGoal) < 1 and abs(y-yGoal) < 1) {
		dropMove = false;
	} 
} else {
		
		if(!keyboard_check(ord("K"))) { exit; }		
			
			var playerX = o_player.x;
			var playerY = o_player.y;
			var radius = 8;
			
			if (point_in_rectangle(playerX, playerY, x-radius, y-radius, x+radius, y+radius)) {
			
				//If on top of player
				radius = 8;
				
				if (point_in_rectangle(playerX, playerY, x-radius, y-radius, x+radius, y+radius)) {
					//Pickup
					var in = iNum;
				
					with(o_inventory) {
						var invGrid = ds_inventory;
						var isPickedUp = false;
						
						//Does item already exists in inventory
						var i = 0; repeat(invSlots) {
							if(invGrid[# 0, i] == in) {
								invGrid[# 1, i] += 1;
								isPickedUp = true;
								break;
							} else {
								i += 1;
							}
						}
					
					
						//Add item to inventory if space available
						if(!isPickedUp) {
							var i = 0; repeat(invSlots) {
								if(invGrid[# 0, i] == item.none) {
									invGrid[# 0, i] = in;
									invGrid[# 1, i] += 1;
									isPickedUp = true;
									XPGain(5);
									break
								} else {
									i++;
								}
							}
						}

					}
				
					//Destroy picked up
						if(isPickedUp) {
							//Create notification
							if(!instance_exists(o_notification)) {
								instance_create_layer(0, 0, "Player", o_notification)
							}
							
							var in = iNum;
							
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
							
							
							
							instance_destroy();
							show_debug_message("Picked up item");
							audio_play_sound(a_pickup, 2, false)
						}
				
				}
			
			}
		
	}
