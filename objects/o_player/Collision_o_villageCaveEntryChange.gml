if(room == r_village) {
	if(!instance_exists(o_fade)) {	
		fade(r_caveEntry, 20, c_black)
		
		global.playercaveX += 10
	}
} 

if (room == r_caveEntry) {
	if(!instance_exists(o_fade)) {	
		fade(r_village, 20, c_black)
		
		global.playerVillageX -= 10
	}
}

