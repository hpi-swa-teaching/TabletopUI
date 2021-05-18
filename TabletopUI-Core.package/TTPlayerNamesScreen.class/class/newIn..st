constants and defaults
newIn: aTTTabletopWindow

	| screen |
	
	screen := super newIn: aTTTabletopWindow.
	screen playerNames: (Array new: (screen game playerCount)).
	^ screen