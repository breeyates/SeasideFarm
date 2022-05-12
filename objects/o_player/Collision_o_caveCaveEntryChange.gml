if(room == r_caveNew) {
	if(!instance_exists(o_fade)) {	
		fade(r_caveEntry, 20, c_black)
		global.playercaveY += 10
	}
} 

if (room == r_caveEntry) {
	if(!instance_exists(o_fade)) {	
		fade(r_caveNew, 20, c_black)
	}
}

