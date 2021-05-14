toolbuilder
build

	| currentScreenSpec |
	
	self spec: PluggableWindowSpec new.
	self currentScreen: (TTPlayerCountScreen newWithWindow: self game: (self game)).
	currentScreenSpec := (self currentScreen buildWith: self builder)
		frame: (0 @ 0 corner: 1 @ 1).
	self spec 
		children: {currentScreenSpec} asOrderedCollection;
		label: 'placy';
		extent: 800 @ 500.
	
	^ self spec