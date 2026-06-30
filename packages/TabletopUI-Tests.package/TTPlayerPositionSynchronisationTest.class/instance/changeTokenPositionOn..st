testing
changeTokenPositionOn: aMap

	| token tile |
	token := aMap tokens first.
	tile := (aMap tiles atRow: 2) at: 2.
	tile acceptDroppingMorph: token event: DropEvent new