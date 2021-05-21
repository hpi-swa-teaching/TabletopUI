constants and defaults
newIn: aTTTabletopWindow

	| screen |
	
	screen := super newIn: aTTTabletopWindow.
	screen playerNames: (Array new: (screen game playerCount)).
	1 to: (screen game playerCount) do: [:aNumber | screen playerNames at: aNumber put: TTPlayer new].
	
	^ screen