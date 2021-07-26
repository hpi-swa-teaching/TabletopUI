initialization
addStandardImages

	"self images
		add: 'skyrim' -> (self imageMorphOfName: 'skyrim.png');
		add: 'hafenstadt' -> (self imageMorphOfName: 'hafenstadt.png');
		add: 'indoor' -> (self imageMorphOfName: 'indoor.png')"
	self images
		add: 'skyrim' -> (self imageMorphOfName: 'character_token_blue.png');
		add: 'hafenstadt' -> (self imageMorphOfName: 'character_token_blue.png');
		add: 'indoor' -> (self imageMorphOfName: 'character_token_blue.png')