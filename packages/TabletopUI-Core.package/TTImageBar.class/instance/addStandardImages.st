initialization
addStandardImages

	self images
		add: 'skyrim' -> (self createImageFromFileNamed: 'skyrim.png');
		add: 'hafenstadt' -> (self createImageFromFileNamed: 'hafenstadt.png');
		add: 'indoor' -> (self createImageFromFileNamed: 'indoor.png')