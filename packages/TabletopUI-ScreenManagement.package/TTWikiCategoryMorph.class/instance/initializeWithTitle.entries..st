as yet unclassified
initializeWithTitle: aTitleString entries: aCollection

	self initializeWithTitle: aTitleString buildContent: [:container |
		container cellInset: 7.
		aCollection do: [:entry |
			container addMorphBack: entry]]
