input handling
update: aSymbol

	self
		state: (self model perform: self getSelector);
		setImage