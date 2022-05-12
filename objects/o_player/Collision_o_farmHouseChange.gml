if(room == r1_house) {
		
	if(!instance_exists(o_fade)) {	
		fade(r_farm, 20, c_black)
		global.playerFarmY += 10
	}
	
	

} 

if (room == r_farm) {
	
	if(!instance_exists(o_fade)) {	
		fade(r1_house, 20, c_black)
	}
}

