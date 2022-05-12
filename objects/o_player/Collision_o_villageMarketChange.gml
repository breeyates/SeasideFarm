if(room == r_village) {
	if(!instance_exists(o_fade)) {	
		fade(r_market, 20, c_black)
	}
} 

if (room == r_market) {
	if(!instance_exists(o_fade)) {	
		fade(r_village, 20, c_black)
		
		global.playerVillageY += 10
	}
}


