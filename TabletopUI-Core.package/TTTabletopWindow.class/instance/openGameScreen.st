as yet unclassified
openGameScreen
	
	self children: {(TTGameScreen newWithWindow: self game: (self game)) buildWith: ToolBuilder default}.
	self changed: #children
	
	"self currentScreen: (TTGameScreen newWithWindow: self game: (self game))."
	"
	currentScreenSpec := (self currentScreen buildWith: self builder).
	currentScreenSpec frame: (0 @ 0 corner: 1 @ 1).
	self spec children: {currentScreenSpec} asOrderedCollection.
	self builder open: self spec"