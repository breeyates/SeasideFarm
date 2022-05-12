

#region VARIABLES
//VARIABLES
depth = -150
scale = 4.1;
boxSize = 16;
inventory = false;
UIX = 0
UIY = 20
#endregion


//PLAYER INFO/MONEY
infoX = UIX + (55 * scale)
infoY =  UIY + (20*scale)

//INVENTORY ITEMS
invItems = s_inventoryItems;
invColumns = sprite_get_width(invItems) / boxSize;
invRows = sprite_get_height(invItems) / boxSize;
slots = 20; //slots in UI
invSlots = 35; //slots in inventory
rowLength = 5;

invSlotsX = infoX;
invSlotsY = infoY + (20 * scale);

frame = 0;

ds_inventory = ds_grid_create(2, invSlots)

//ITEM LIST
enum item2 {
	none = 0,
	carrot = 1,
	tomato = 2,
	strawberry = 3,
	pumpkin = 4,
	potato = 5,
	corn = 6,
	watermelon = 7,
	cabbage = 8,
	radish = 9,
	hay = 10,
	rose = 11,
	starflower = 12,
	primrose = 13,
	iris = 14,
	egg = 15,
	milk = 16,
	cheese = 17,
	wool = 18,
	bacon = 19,
	diamond = 20,
	ruby = 21,
	emerald = 22,
	diamondOre = 23,
	goldOre = 24,
	copperOre = 25,
	clam = 26,
	seashell = 27,
	seagullFeather = 28,
	wood = 29,
	stone = 30,
	mushroom = 31,
	raspberry = 32,
	cherry = 33,
	trash = 34,
	glassbottle = 35,
}

//Randomly populate
for(var i = 0; i < invSlots; i++) {
	randomize();
	//Item
	ds_inventory[# 0, i] = irandom_range(1, 35);
	//Amount
	ds_inventory[# 1, i] = irandom_range(1, 10);
}


//SELECTING
selected = 0;
pickup = -1;
mouseXslot = 0;
mouseYslot = 0;