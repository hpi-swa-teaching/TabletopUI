toolbuilder
buildWith: aToolBuilder
		
	^ self buildWith: aToolBuilder children: {
		(0.3 @ 0.4 corner: 0.4 @ 0.5) -> [self createDecreaseButtonSpecWith: aToolBuilder].
		(0.4 @ 0.4 corner: 0.6 @ 0.5) -> [self createInputFieldSpecWith: aToolBuilder].
		(0.6 @ 0.4 corner: 0.7 @ 0.5) -> [self createIncreaseButtonSpecWith: aToolBuilder].
		(0.3 @ 0.6 corner: 0.7 @ 0.7) -> [self createContinueButtonSpecWith: aToolBuilder]}	