
if(is_array(scripts)) {
	
	var scriptPage = scripts[page]
	
	if(choiceDia) {
		scriptPage = scriptPage[choice]
	}
	
	if(scriptPage != -1) {
		
		var len = array_length_1d(scriptPage)
		
		if(len == 1) {
			script_execute(scriptPage[0]);
		} else {
			var args = array_create(len - 1, 0)
			array_copy(args, 0, scriptPage, 1, len - 1);
			scriptExecute(scriptPage[0], args);
		}
	}
}
