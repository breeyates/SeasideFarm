if(room != r_farm) {
	planting = false;
	exit
}

#region Plantin

if(keyboard_check_pressed(ord("P"))) {
	planting = !planting;
	o_player.abletoMove = !o_player.abletoMove
	return;
}


if planting {
	mx = mouse_x;
	my = mouse_y;

	
	for(var i = 0; i <= 9; i++) {
		if(keyboard_check_pressed(ord(i))) {
			selectCrop = i;
		}
	}
	
	if(mouse_check_button(mb_left)) {
		
		createCrop(mx, my, selectCrop);
		
	}
	
	
}


#endregion

//Cheat code to grow crops
if(instance_exists(o_crop) and keyboard_check_pressed(ord("G"))) {
	with(o_crop) {
			
		if(growthStage < maxGrowthStage) {
			daysOld += 1
			
			var firstGrowth = 0;
			if(daysOld > 0) {
				firstGrowth = 1;
			}
			
			growthStage = firstGrowth + (daysOld div growthStageDuration)
		} else {
			growthStage = maxGrowthStage
			fullyGrown = true
		}
	}
}

