//--------------------Draw text box--------------------
draw_sprite_part_ext(box, 0, 0, 0, boxWidth, boxHeight, boxUIX, boxUIY, scale, scale, c_white, 1);


//--------------------Draw NPC Name--------------------
draw_set_halign(fa_left)
draw_set_valign(fa_middle)

draw_set_font(f_main_bold);
var c = textColor

draw_text_color(nameX, nameY, name, c, c, c, c, 1);

draw_set_halign(fa_left)
draw_set_valign(fa_top)

//--------------------Draw Text--------------------
draw_set_font(font);

if(!choiceDia) {	
	if(!pause and counter < stringLen) {	
		counter++;		
		
		switch(string_char_at(wrappedText, counter)) {
			case ",":
				pause = true
				alarm[0] = 15;
				break;
			case ".":
				pause = true
				alarm[0] = 25;
				break;
			case "!":
				pause = true
				alarm[0] = 25;
				break;
			case "?":
				pause = true
				alarm[0] = 25;
				break;
		}
	}

	var subString = string_copy(wrappedText, 1, counter)
	draw_text_color(textX, textY, subString, c, c, c, c, 1);
	
} else {	
	c = textColor
	var i = 0, yBuff = 0; repeat(optionsLength) {	
		
		if(choice == i) {
			c = choiceColor
			draw_text_color(boxUIX + textLineWidth, textY + yBuff, "<", c, c, c, c, 1)
		} else {
			c = textColor
		}
		
		draw_text_ext_color(textX, textY + yBuff, options[i], textHeight + 8, textLineWidth, c, c, c, c, 1);		
		yBuff += string_height_ext(options[i], textHeight + 8, textLineWidth);
		i++;
	}

}



//--------------------Draw SPACE Key--------------------
var c2 = c_black
draw_text_color(continueX, continueY, continueText, c2, c2, c2, c2, 1);