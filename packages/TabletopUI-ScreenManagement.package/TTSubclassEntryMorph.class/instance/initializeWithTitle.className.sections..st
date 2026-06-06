as yet unclassified
initializeWithTitle: aTitle className: aClassName sections: aSectionsCollection

	self initializeWithTitle: aTitle buildContent: [:container |
		aSectionsCollection do: [:each |
			self addSection: '--- ' , each key , ' ---' withItems: {each value} to: container]]
