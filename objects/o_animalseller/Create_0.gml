event_inherited()

//Start at correct coords
x = global.marisaX
y = global.marisaY


//Animations sprites
walkLeft = s_marisaleft
walkRight = s_marisaright
walkUp = s_marisaup
walkDown = s_marisadown

idleDown = s_marisastill
idleUp = s_marisastill
idleRight = s_marisastill
idleLeft = s_marisastill

//Starting coords
startX = 802
startY = 969

//Instance info
npcInst = o_animalseller
npcRoom = r_village
RoomLayer = ""

//Friendship info
friendshipXP = global.marisaXP
friendshipLevel = global.marisaLevel;
talkedToday = global.marisaTalked;
friendshipTitle = global.marisaTitle

//Where to not spawn
roomXoffset = 0

destinationX = 822
destinationY = 961

//Dialouge
name = "Marisa"
soldLine = "Thanks for stopping by, you can find your new animal in the \ncoop/barn on your farm."
denyLine = "Sorry you do not have enough to purchase this animal."
maxLine = "Uh oh, looks like you already own the maximum amount of \nthis animal"


