NPCUI = false
scale = 2.6

ui = s_NPCUI

cellSize = 16
uiWidth = sprite_get_width(ui)
uiHeight = sprite_get_height(ui)

guiWidth = display_get_gui_width()
guiHeight = display_get_gui_height()

npcUIX = (guiWidth * 0.5) - (uiWidth * 0.5 * scale)
npcUIY = (guiHeight * 0.5) - (uiHeight * 0.5 * scale)

slotsX = npcUIX + (40 * scale)
slotsY = npcUIY + (17 * scale)
npcSlots = 10

npcSlotsHeight = 5
npcSlotsWidth = 2

xBuff = 90
yBuff = 20

totalNPCs = array_create(npcSlots, -1);
totalNPCs[0] = o_baker
totalNPCs[1] = o_hobo
totalNPCs[2] = o_beachboy
totalNPCs[3] = o_antonio
totalNPCs[4] = o_blacksmith
totalNPCs[5] = o_teacher
totalNPCs[6] = o_florist
totalNPCs[7] = o_competitor
totalNPCs[8] = o_grandma
totalNPCs[9] = o_animalseller


NPCNames = array_create(npcSlots, -1)
NPCNames[0] = global.ava
NPCNames[1] = global.marko
NPCNames[2] = global.shane

NPCNames[4] = global.flynn
NPCNames[5] = global.joselyn
NPCNames[6] = global.idris
NPCNames[7] = global.harrison
NPCNames[8] = global.hazel
NPCNames[9] = global.marisa


NPCLevels = array_create(npcSlots, -1)



NPCXP = array_create(npcSlots, -1)





