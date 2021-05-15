as yet unclassified
buildWith: aMorphicToolBuilder
		
	^ self buildWith: aMorphicToolBuilder children: (self layoutInputFieldsWith: self game playerCount)