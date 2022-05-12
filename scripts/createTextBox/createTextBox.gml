function createTextBox(text1, speakers1, nextLine1, scripts1, npcInst1){
	
	var textBox = instance_create_layer(0, 0, "UI", o_textbox);
	
	with(textBox) {
		text = text1;
		speakers = speakers1;
		nextLine = nextLine1
		scripts = scripts1
		
		npcInst = npcInst1
		
		var textLength = array_length_1d(text);
		var i = 0; repeat(textLength) {
			
			names[i] = speakers[i].name;		
			i++;
		}
		
		event_perform(ev_other, ev_user0);
		
	}
	
	return textBox;
	
}