if(!planting) { 
	exit;
}

var cs = cellSize;
var xx = (mx div cs);
var yy = (my div cs);

xx = xx*cs;
yy = yy*cs;


draw_sprite(s_cropsPackets, selectCrop, xx+(cs/2), yy+(cs/2))