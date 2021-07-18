initialization
addStandardImages

	self images
		add: 'skyrim' -> (self imageMorphFromFile: 'tabletop-graphics/skyrim.png');
		add: 'hafenstadt' -> (self imageMorphFromFile: 'tabletop-graphics/hafenstadt.png');
		add: 'indoor' -> (self imageMorphFromFile: 'tabletop-graphics/indoor.png')