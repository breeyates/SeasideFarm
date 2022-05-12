depth = -150
scale = 3.3;
inventory = false;

//SPRITES
slot = s_slot
invUI = s_inventory2

//UI VARIABLES
cellSize = 16;
cellSizeSlot = 18;
invUIWidth = sprite_get_width(s_inventory2)
invUIHeight = sprite_get_height(s_inventory2)
guiWidth = display_get_gui_width()
guiHeight = display_get_gui_height()


invUIX = (guiWidth * 0.5) - (invUIWidth * 0.5 * scale)
invUIY = (guiHeight * 0.5) - (invUIHeight * 0.5 * scale)

//SLOTS
slotsX = invUIX + (12 * scale);
slotsY = invUIY + (15 * scale);
invSlots = 27;
invSlotsWidth = 9;
invSlotsHeight = 3;
xBuffer = 5
yBuffer = 6


//DESCRIPTION VARIABLES
descX = slotsX
descY = invUIY + (101 * scale);

//INVENTORY ITEMS
invItems = s_inventoryItems2
invItemsColumns = sprite_get_width(invItems)/cellSize;
invItemsRows = sprite_get_height(invItems)/cellSize;

//SELECTION / PICKING UP
selected = 0
pickedUp = -1
mSlotY = 0
mSlotX = 0

//DATA STRUCTURE
ds_inventory = ds_grid_create(2, invSlots);

//ITEM LIST
enum item {
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

//Fill inventory -- TESTING
for(var i = 0; i < invSlots; i++) {
	//ITEM
	//ds_inventory[# 0, i] = irandom_range(1, 46)
	//AMOUNT
	//ds_inventory[# 1, i] = irandom_range(1,12)
}


#region Item Info
itemInfo = ds_grid_create(2, 46);

//Names
var yy = 0;
var j = 0;
itemInfo[# yy, j++] = "Nothing";
itemInfo[# yy, j++] = "Carrot";
itemInfo[# yy, j++] = "Tomato";
itemInfo[# yy, j++] = "Strawberry";
itemInfo[# yy, j++] = "Pumpkin";
itemInfo[# yy, j++] = "Potato";
itemInfo[# yy, j++] = "Corn";
itemInfo[# yy, j++] = "Watermellon";
itemInfo[# yy, j++] = "Cabbage";
itemInfo[# yy, j++] = "Radish";
itemInfo[# yy, j++] = "Hay";
itemInfo[# yy, j++] = "Rose";
itemInfo[# yy, j++] = "Starflower";
itemInfo[# yy, j++] = "Primrose";
itemInfo[# yy, j++] = "Iris";
itemInfo[# yy, j++] = "Egg";
itemInfo[# yy, j++] = "Milk";
itemInfo[# yy, j++] = "Cheese";
itemInfo[# yy, j++] = "Wool";
itemInfo[# yy, j++] = "Bacon";
itemInfo[# yy, j++] = "Diamond";
itemInfo[# yy, j++] = "Ruby";
itemInfo[# yy, j++] = "Emerald";
itemInfo[# yy, j++] = "Diamond Ore";
itemInfo[# yy, j++] = "Gold Ore";
itemInfo[# yy, j++] = "Copper Ore";
itemInfo[# yy, j++] = "Clam";
itemInfo[# yy, j++] = "Seashell";
itemInfo[# yy, j++] = "Seagull Feather";
itemInfo[# yy, j++] = "Wood";
itemInfo[# yy, j++] = "Stone";
itemInfo[# yy, j++] = "Mushroom";
itemInfo[# yy, j++] = "Raspberry";
itemInfo[# yy, j++] = "Cherry";
itemInfo[# yy, j++] = "Trash";
itemInfo[# yy, j++] = "Glass bottle";
itemInfo[# yy, j++] = "Herring";
itemInfo[# yy, j++] = "Goldfish";
itemInfo[# yy, j++] = "Mackeral";
itemInfo[# yy, j++] = "Turtle";
itemInfo[# yy, j++] = "Crab";
itemInfo[# yy, j++] = "Clownfish";
itemInfo[# yy, j++] = "Worm";
itemInfo[# yy, j++] = "Moth";
itemInfo[# yy, j++] = "Dragonfly";
itemInfo[# yy, j++] = "Grasshopper";



//Description
yy = 1;
j = 0;
itemInfo[# yy, j++] = " ";
itemInfo[# yy, j++] = "For the rabbits";
itemInfo[# yy, j++] = "To-mah-toe";
itemInfo[# yy, j++] = "Great for something sweet";
itemInfo[# yy, j++] = "Perfect for Halloween";
itemInfo[# yy, j++] = "So many uses";
itemInfo[# yy, j++] = "(Not for popping)";
itemInfo[# yy, j++] = "A summer delicacy";
itemInfo[# yy, j++] = "Not lettuce";
itemInfo[# yy, j++] = "It's rad";
itemInfo[# yy, j++] = "Do not eat raw";
itemInfo[# yy, j++] = "Don't let go Jack!";
itemInfo[# yy, j++] = "Because it looks like a star";
itemInfo[# yy, j++] = "I volunteer as tribute";
itemInfo[# yy, j++] = "A beautiful flower";
itemInfo[# yy, j++] = "It's an egg";
itemInfo[# yy, j++] = "2%";
itemInfo[# yy, j++] = "Extra cheesy";
itemInfo[# yy, j++] = "Would make a good coat";
itemInfo[# yy, j++] = "Mmmmmm";
itemInfo[# yy, j++] = "For that special someone.";
itemInfo[# yy, j++] = "Almost as good as a diamond";
itemInfo[# yy, j++] = "A beautiful shade of green";
itemInfo[# yy, j++] = "Can be made into a diamond";
itemInfo[# yy, j++] = "Can be made into gold";
itemInfo[# yy, j++] = "Can be made into copper";
itemInfo[# yy, j++] = "Maybe it contains a pearl";
itemInfo[# yy, j++] = "Sally sells seashells on the seashore";
itemInfo[# yy, j++] = "Why do I need this?";
itemInfo[# yy, j++] = "Careful not to get a splinter";
itemInfo[# yy, j++] = "How'd this get here?";
itemInfo[# yy, j++] = "What a fun-guy";
itemInfo[# yy, j++] = "Not to be confused with blackberries";
itemInfo[# yy, j++] = "Would make a good lipstick.";
itemInfo[# yy, j++] = "It's probably not worth much";
itemInfo[# yy, j++] = "Is there a message in here?";
itemInfo[# yy, j++] = "This fish is normally found in schools!";
itemInfo[# yy, j++] = "Not a pet";
itemInfo[# yy, j++] = "Holy mackeral! A mackeral!";
itemInfo[# yy, j++] = "Can retreat in it's shell when scared";
itemInfo[# yy, j++] = "Big claws ooo";
itemInfo[# yy, j++] = "Where is my son?!";
itemInfo[# yy, j++] = "Great protein";
itemInfo[# yy, j++] = "They're everywhere...";
itemInfo[# yy, j++] = "Does not sting!";
itemInfo[# yy, j++] = "How do I catch this thing?!";



#endregion

