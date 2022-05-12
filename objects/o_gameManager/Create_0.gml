//PLAYER XP
global.playerLevel = 1

global.playerXP = 0

global.maxXP = global.playerLevel * 100

//----------------Player positions----------------
global.playerFarmX = 512
global.playerFarmY = 278

global.playerVillageX = 376
global.playerVillageY = 60

global.playercaveX = 42
global.playercaveY = 190



global.playerGold = 400;
global.goldStash = 0;

global.shoppingMode = false;

global.isInside = true;

randomize();

alarm[0] = 1;

waterID = -1
waterMapID = -1

audio_play_sound(a_bgmusic, 1, true)