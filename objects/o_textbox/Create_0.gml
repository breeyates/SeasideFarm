//UI variables
box = s_textbox
scale = 3.2

boxWidth = sprite_get_width(box)
boxHeight = sprite_get_height(box)

xBuffer = 35
yBuffer = 5

guiWidth = display_get_gui_width()
guiHeight = display_get_gui_height()

boxUIX = (guiWidth * 0.5) - (boxWidth * 0.5 * scale)
boxUIY = (guiHeight * 0.8) - (boxHeight * 0.5 * scale)

//Name text
nameX = boxUIX + (18 * scale)
nameY = boxUIY + (11 * scale)

name = ""

//Dialouge text variables
textX = boxUIX + (13 * scale)
textY = boxUIY + (32 * scale)
textLineWidth = (boxWidth * scale) - (2 * xBuffer)

draw_set_font(f_main_small)
textHeight = string_height("M")

//Dialogue
text[0] = ""

page = 0;
counter = 0;
pause = false;

//Text variables
textColor = c_black
font = f_main_small


//Spacebar escape key text
continueX = boxUIX + (262 * scale)
continueY = boxUIY + (56 * scale)

continueText = "PRESS ENTER"

//Choice dialougue
choice = 0
choiceColor = c_white

npcInst = -1