constants and defaults
newIn: aTTTabletopWindow

	| screen |
	
	screen := super newIn: aTTTabletopWindow.
	screen playerNames: (Array new: (screen game count)).
	1 to: (screen game count) do: [:aNumber | screen playerNames at: aNumber put: TTPlayer new].
	
	^ screen