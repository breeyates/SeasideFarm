keyleft =  keyboard_check(ord("A"));
keyright =  keyboard_check(ord("D"));
keyup = keyboard_check(ord("W"));
keydown = keyboard_check(ord("S"));
sprint = keyboard_check(vk_shift)
interact = keyboard_check_pressed(ord("R"))
 

//SPRINTING
if(sprint and stamina > 0) {
	spd = 3.0
	stamina -= .5;
} else {
	spd = 1.6
}


if(!sprint) {
	stamina += 0.1;
}

if(stamina > 100) {
	stamina = 100;
}

if(stamina < 0) {
	stamina = 0;
}


if(abletoMove) {
	
	hspeed = (keyright - keyleft) * spd
	vspeed = (keydown - keyup) * spd
	
	if (place_meeting(x + hspeed + sign(hspeed), y, o_collisionblock) or place_meeting(x + hspeed + sign(hspeed), y - 5, o_parentNPC) or place_meeting(x + hspeed + sign(hspeed), y - 5, o_parentAnimal)) {
		hspeed = 0;
	}
	
	if (place_meeting(x, y + vspeed + (sign(vspeed)), o_collisionblock)  or place_meeting(x, y + vspeed + (sign(vspeed)), o_parentNPC) or place_meeting(x, y + vspeed + (sign(vspeed)), o_parentAnimal)) {
		vspeed = 0;
	}

} else {
	hspeed = 0
	vspeed = 0
}



if (hspeed > 0) {
		sprite_index = walkRight
		image_speed = imgspd
	
		down = false;
		up = false;
		right = false;
		left = true;
	}
	
	
	else if (hspeed < 0) {
		sprite_index = walkLeft
		image_speed = imgspd
	
		down = false;
		up = false;
		right = true;
		left = false;
	}
	
	
	else if (vspeed > 0) {
		sprite_index = walkDown
		image_speed = imgspd
	
		down = true;
		up = false;
		right = false;
		left = false;
	}
	
	
	 else if (vspeed < 0) {
		sprite_index = walkUp
		image_speed = imgspd
	
		down = false;
		up = true;
		right = false;
		left = false;
	}

if (hspeed == 0 and vspeed == 0) {		
		
		if up {
			sprite_index = s_player
			image_index = 1
			image_speed = 0
		} else if down {
			sprite_index = s_player
			image_index = 0
			image_speed = 0
		} else if right {
			sprite_index = s_player
			image_index = 3
			image_speed = 0
		} else if left {
			sprite_index = s_player
			image_index = 2
			image_speed = 0
		}
		
		
}


//Talking to NPCs

if(interact) {

	show_debug_message("Hit interact key")
	
	if(activeText == noone) {
		show_debug_message("ActiveText == noone")
		var radius = 10;
		var inst = collision_rectangle(x - radius, y - radius, x + radius, y + radius, o_parentNPC, false, false) ;
		if(instance_exists(inst) and inst.abletoMove) {		
			abletoMove = false;
			show_debug_message("Player unable to move")
		}
		
		if(inst != noone and inst.abletoMove) {
			show_debug_message("Interacted with NPC")
			with(inst) {				
				var activeText2 = createTextBox(text, speakers, nextLine, scripts, inst);
				show_debug_message("Created text box")
				abletoMove = false;
				xMove = 0;
				yMove = 0;
				
				//Change direction of NPC
				if(o_player.y > y) {
					down = true;
					up = false;
					right = false;
					left = false;
				} else {
					down = false;
					up = true;
					right = false;
					left = false;
				}
				
				if(!instance_exists(activeText2)) {
					abletoMove = true;
				}
			}
			
			activeText = activeText2
			
		}
	} else {
		show_debug_message("Activetext != noone")
		if(!instance_exists(activeText)) {
			activeText = noone
		}
		
	}

}





