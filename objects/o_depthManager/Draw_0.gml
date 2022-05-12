var instNum = instance_number(o_depth)

var ds_depth2 = ds_depth;

ds_grid_resize(ds_depth2, 2, instNum);

var i = 0; with(o_depth) {
	ds_depth2[# 0, i] = id;
	ds_depth2[# 1, i] = y;
	i += 1;
}

ds_grid_sort(ds_depth2, 1, true);


var j; i = 0; repeat(instNum) {

	j = ds_depth2[# 0, i];
	
	with(j) {
		event_perform(ev_draw, 0);
	}
	
	i += 1;
	
}

