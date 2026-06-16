as yet unclassified
buildCategory: aTitle from: aCollection 

	| category space |
	category := TTWikiCategoryMorph new initializeWithTitle: aTitle entries: aCollection.
	self addMorphBack: category.
	space := Morph new
		color: Color transparent;
		extent: 1 @ 10;
		hResizing: #spaceFill;
		vResizing: #rigid;
		yourself.
	self addMorphBack: space
	