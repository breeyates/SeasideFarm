function gold(amount){

if(global.playerGold > 0) {
	global.playerGold = global.playerGold + amount;
} else {
	show_debug_message("Not enough money!");
}

if(global.playerGold <= 0) {
	global.playerGold = 0;
}

}