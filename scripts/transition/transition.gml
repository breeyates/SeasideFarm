/*
global.midTransition = false;
global.roomTarget = -1;


function TransitionPlaceSequence(type){

	if(layer_exists("transition")) layer_destroy("transition");
	
	var lay = layer_create(-9999, "transition");
	
	layer_sequence_create(lay,0,0, type);


}


function TransitionStart(roomTarget, typeOut, typeIn) {

	if(!global.midTransition) {
	
		global.midTransition = true;
		global.roomTarget = roomTarget
		TransitionPlaceSequence(typeOut);
		layer_set_target_room(roomTarget);
		TransitionPlaceSequence(typeIn);
		layer_reset_target_room();
		return true;
		
	} else {
		return false
	}

}


function TransitionChangeRoom() {
	room_goto(global.roomTarget);
}


function TransitionFinished() {
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
}
*/