as yet unclassified
addPlayerName: aText index: aNumber

	self game playerNames at: aNumber put: aText.
	self changed: #playerNames