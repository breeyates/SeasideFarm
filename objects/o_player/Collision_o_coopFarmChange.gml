if(room == r_farm) {
	if(!instance_exists(o_fade)) {	
		fade(r_coop, 20, c_black)
	}
	
	
} 

if (room == r_coop) {
	if(!instance_exists(o_fade)) {	
		fade(r_farm, 20, c_black)
		global.playerFarmY += 10
	}
	
	
}

