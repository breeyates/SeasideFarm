if(room == r_farm) {
	if(!instance_exists(o_fade)) {	
		fade(r_village, 20, c_black)
		global.playerVillageY += 20
	}
} 

if (room == r_village) {
	if(!instance_exists(o_fade)) {	
		fade(r_farm, 20, c_black)
		global.playerFarmY -= 40
	}
}
