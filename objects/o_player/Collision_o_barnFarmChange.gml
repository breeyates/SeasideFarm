if(room == r_farm) {
	if(!instance_exists(o_fade)) {	
		fade(r_barn, 20, c_black)
	}
} 

if (room == r_barn) {
	
	if(!instance_exists(o_fade)) {	
		fade(r_farm, 20, c_black)
		global.playerFarmY += 10
	}
	
	
}

