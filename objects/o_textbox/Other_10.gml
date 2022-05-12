name = names[page];

if(!is_array(text[page])) {
	wrappedText = wrapText(text[page], textLineWidth)
	stringLen = string_length(wrappedText)
	choiceDia = false
} else {
	options = text[page]
	optionsLength = array_length_1d(options)
	choiceDia = true
}

counter = 0

