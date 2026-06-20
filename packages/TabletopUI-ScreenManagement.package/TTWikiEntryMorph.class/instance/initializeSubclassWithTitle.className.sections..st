entry categories
initializeSubclassWithTitle: aTitle className: aClassName sections: aSectionsCollection

	self initializeCategoryWithTitle: aTitle buildContent: [:container |
		aSectionsCollection do: [:each |
			self addSection: '--- ' , each key , ' ---' withItems: {each value} to: container]]
