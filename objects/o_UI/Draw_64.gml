

#region DATE/GOLD

//Day & Night Picture
var dayNightScale = 2.5
var hour = o_dayNightCycle.hours

//Box shadow
draw_sprite_stretched_ext(s_dayPictureUI, -1, 1180, 31, 34*dayNightScale, 58*dayNightScale, c_black, 0.3);
//Main box
draw_sprite_stretched_ext(s_dayPictureUI, -1, 1175, 25, 34*dayNightScale, 58*dayNightScale, c_white, 1);

//Pictures
if ((hour > phases.sunrise and hour <= phases.sunset)) {
	draw_sprite_stretched_ext(s_dayTimeUI, -1, 1175, 25, 34*dayNightScale, 58*dayNightScale, c_white, 1);
} else {
	draw_sprite_stretched_ext(s_nightTimeUI, -1, 1175, 25, 34*dayNightScale, 58*dayNightScale, c_white, 1);
}

//Day & Gold UI Box
draw_sprite_stretched_ext(s_goldDateUI, -1, 1021, 89, 57*dayNightScale, 32*dayNightScale, c_white, 1);

//TEXT
draw_set_font(f_UI)
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(make_color_rgb(80, 62, 54))

//Day Name
var textScale = 1.23
draw_text_transformed(1125, 149, dayOfWeek, textScale, textScale, 0)

//Day Number
draw_text_transformed(1076, 149, string(o_dayNightCycle.day), textScale, textScale, 0)

//Gold amount
draw_set_halign(fa_right);
//Put gold icon here
draw_sprite_stretched_ext(s_coin, -1, 1030, 103, 25, 25, c_white, 1);
draw_text_transformed(1150, 115, string(global.playerGold), textScale, textScale, 0)


#endregion

#region HP/STAMINA BARS

//-----------------STAMINA BAR-----------------
/*
draw_sprite_stretched_ext(s_staminaBar, -1, 970, 67, 300, 160, c_white, 1)

for(var i = 0; i < o_player.stamina; i+= 5) {
	
	var xx = 1033 + (i * 2)

	draw_sprite_stretched(s_staminatick, -1, xx, 130, 40, 40);
}
*/


//==========================================
//-----------------LEVEL BAR-----------------
//==========================================

//-----------------XP TEXT SHADOW-----------------
draw_set_halign(fa_right);
var b = c_black 
//SHADOW
draw_text_transformed_color(
440, 124, 
string(global.playerXP) + "/" + (string(global.playerLevel * 100)),
1.8 , 1.8 , 0, 
b, b, b, b, 
0.45);


//-----------------XP TEXT MAIN-----------------
var w = c_white
draw_text_transformed_color(
435, 120, 
string(global.playerXP) + "/" + (string(global.playerLevel * 100)),
1.8,1.8, 0,
w, w, w, w,
1);

//BAR
var percent = (global.playerXP / (global.playerLevel * 100))
var levelScale = 3.6;

var XPWidth = sprite_get_width(s_LevelBarXP) * percent
var XPHeight = sprite_get_height(s_LevelBarXP) 

draw_sprite_stretched_ext(s_levelBarUnder, -1, 0, -50, 120*levelScale, 64*levelScale, c_white, 1)

draw_sprite_stretched_ext(s_LevelBarXP, 0, 110, 55, XPWidth * levelScale, XPHeight*levelScale, c_white, 1)

//BAR

draw_sprite_stretched_ext(s_levelBar, -1, 0, -50, 120*levelScale, 64*levelScale, c_white, 1)

//CURRENT LEVEL TEXT
draw_set_font(f_UI)
draw_set_color(c_black)
draw_set_valign(fa_center)
draw_set_halign(fa_center)
draw_text_transformed(70, 69, string(global.playerLevel), 1.5, 1.5, 0)




/*
var j = (global.playerLevel * 100) div 20;

for(var i = 0; i < global.playerXP; i+= 5) {
	
	var xx = 90 + (i * 2)
	draw_sprite_stretched(s_leveltick, -1, xx, 40, 57, 57);
}
*/




#endregion

