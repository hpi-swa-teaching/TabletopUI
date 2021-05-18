as yet unclassified
buildWith: aMorphicToolBuilder playerCount: aNumber
		
	^ self buildWith: aMorphicToolBuilder children: (self layoutInputFieldsWith: aNumber)