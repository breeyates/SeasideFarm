

if (!NPCUI) { exit }

draw_sprite_part_ext(ui, 0, 0, 0, uiWidth, uiHeight, npcUIX, npcUIY, scale, scale, c_white, 1);

for(var i = 0; i < npcSlots; i++) {
	
	draw_set_halign(fa_left)
	draw_set_valign(fa_bottom)
	
	//NAMES
	var xx1 = (slotsX - 95) + ((i mod npcSlotsWidth) * 225) + xBuff
	var yy1 = slotsY + (i div npcSlotsWidth) * 80 + yBuff
	
	draw_set_font(f_main);
	draw_set_color(c_black)
	
	//Draw name
	draw_text_transformed(xx1, yy1, string(NPCNames[i]), 0.9, 0.9, 0);
	
	//TITLES
	var yy2 = yy1 + 15
	
	draw_text_transformed(xx1, yy2, string(NPCLevels[i]), 0.5, 0.5, 0);
	
	
	//XP
	var yy3 = yy2 + 15
	draw_text_transformed(xx1, yy3, "XP: " + string(NPCXP[i]), 0.5, 0.5, 0);
	
}
