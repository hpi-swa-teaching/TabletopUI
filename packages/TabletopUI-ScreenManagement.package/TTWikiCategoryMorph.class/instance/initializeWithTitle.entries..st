display
initializeWithTitle: aTitleString entries: aCollection

	self initializeCategoryWithTitle: aTitleString buildContent: [:container |
		container cellInset: 7.
		aCollection do: [:entry |
			container addMorphBack: entry]]
