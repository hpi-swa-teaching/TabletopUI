toolbuilder
buildWith: aMorphicToolBuilder
		
	^ self buildWith: aMorphicToolBuilder children: {
		(0.3 @ 0.4 corner: 0.4 @ 0.5) -> [self buildDecreaseButtonSpec].
		(0.4 @ 0.4 corner: 0.6 @ 0.5) -> [self buildInputFieldSpec].
		(0.6 @ 0.4 corner: 0.7 @ 0.5) -> [self buildIncreaseButtonSpec].
		(0.3 @ 0.6 corner: 0.7 @ 0.7) -> [self buildContinueButtonSpec]}	