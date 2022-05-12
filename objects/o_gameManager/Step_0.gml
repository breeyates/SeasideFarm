var hour

if(instance_exists(o_dayNightCycle)) {
	var hour = o_dayNightCycle.hours
}


if(global.playerXP >= global.playerLevel * 100) {
	global.playerXP = 0
	global.playerLevel++;
}


if(room == r1_house or room == r_coop or room == r_cave or room == r_market or room = r_barn) {
	global.isInside = true;
} else {
	global.isInside = false;
}


if(room == r_beach) {

	waterID = layer_get_id("Water2")
	
	show_debug_message(string(waterID))
	layer_set_visible(waterID, 1)	
	alarm[0] = 4 * room_speed;
	
	
	//Change tree shadows
	var treesNight = layer_get_id("PlantsBottomNight")	
	var treesDay = layer_get_id("PlantsBottom")	
	
	if (hour >= phases.sunrise and hour < phases.sunrise) {		
		layer_set_visible(treesDay, false)
		
	} else {
		layer_set_visible(treesDay, true)
	}
	
	

}

if(room == r_farm) {
	global.playerFarmX = o_player.x
	global.playerFarmY = o_player.y
}

if(room == r_village) {
	global.playerVillageX = o_player.x
	global.playerVillageY = o_player.y
}

if(room == r_caveEntry) {
	global.playercaveX = o_player.x
	global.playercaveY = o_player.y
}

