toolbuilder
buildWith: aMorphicToolBuilder
		
	^ self buildWith: aMorphicToolBuilder children: {
		(0.5 @ 0 corner: 1 @ 0.75) -> [self actionLog buildWith: aMorphicToolBuilder].
		(0.5 @ 0.75 corner: 1 @ 1) -> [self inputField buildWith: aMorphicToolBuilder].
		(0 @ 0 corner: 0.5 @ 1) -> [self scrollPane buildWith: aMorphicToolBuilder]}	