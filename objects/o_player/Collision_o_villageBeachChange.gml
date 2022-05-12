if(room == r_village) {
	if(!instance_exists(o_fade)) {	
		fade(r_beach, 20, c_black)
	}
} 

if (room == r_beach) {
	if(!instance_exists(o_fade)) {	
		fade(r_village, 20, c_black)
		
		global.playerVillageX += 10
	}
}
