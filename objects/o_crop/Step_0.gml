exit;

if(fullyGrown) {
	
	if(!keyboard_check(ord("K"))) { exit;}
	
	var playerX = o_player.x;
	var playerY = o_player.y;
	var radius = 2;
	
	var cs = o_cropManager.cellSize;
    var xx1 = x div cs;
    var yy1 = y div cs

	if(point_in_rectangle(playerX, playerY, x-radius, y-radius, x+radius, y+radius)) {

			var iGrid = o_cropManager.crops_instances;			
			var inst = instance_place(xx1, yy1, o_crop);	
			
			iGrid[# xx1, yy1] = inst;	
			
			instance_destroy();
			
			iGrid[# xx1, yy1] = 0;
			
			
		
	}

}

