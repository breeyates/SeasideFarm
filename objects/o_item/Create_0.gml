event_inherited();

cellSize = 16;
itemSprite = s_inventoryItems2;
sWidth = sprite_get_width(itemSprite)
sHeight = sprite_get_height(itemSprite)

iNum = -1;
xFrame = 0;
yFrame = 0;

xOffset = cellSize/2
yOffset = cellSize*(2/3)


dropMove = true;
spawnedItem = false;
var dropDirection = irandom_range(0, 359);
var length = 20;
xGoal = x + lengthdir_x(length, dropDirection);
yGoal = y + lengthdir_y(length, dropDirection);

