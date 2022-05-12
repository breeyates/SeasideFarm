function wrapText(string, maxWidth){

	var string2 = argument0
	var maxWidth2 = maxWidth
	
	var stringLength = string_length(string2)
	var lastSpace = 1;
	var count = 1;
	var subString;
	
	repeat(stringLength) {
		subString = string_copy(string2, 1, count);
		
		if(string_char_at(string2, count) == " ") {
			lastSpace = count;			
		}
		
		if(string_length(subString) > maxWidth2) {
			string2 = string_delete(string2, lastSpace, 1)
			string2 = string_insert("\n", string2, count);

		}
		
		
		count++;
	}
	
	return string2;

}