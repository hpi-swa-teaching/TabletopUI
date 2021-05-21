constants and defaults
newIn: aTTTabletopWindow

	| screen |
	
	screen := super newIn: aTTTabletopWindow.
	screen players: (Array new: (screen game playerCount)).
	1 to: (screen game playerCount) do: [:aNumber | screen players at: aNumber put: TTPlayer new].
	
	^ screen