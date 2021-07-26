initialization
addStandardImages

	self images
		add: 'skyrim' -> (self imageMorphOfName: 'skyrim.png');
		add: 'hafenstadt' -> (self imageMorphOfName: 'hafenstadt.png');
		add: 'indoor' -> (self imageMorphOfName: 'indoor.png')