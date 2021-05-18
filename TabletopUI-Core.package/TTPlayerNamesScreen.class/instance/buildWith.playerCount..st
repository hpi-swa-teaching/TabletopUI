toolbuilder
buildWith: aMorphicToolBuilder playerCount: aNumber
		
	^ self buildWith: aMorphicToolBuilder children: (self layoutWith: aNumber)