rules
levelForExperiencePoints: aNumber

	| index |
	index := self levelThresholds findFirst: [:entry | entry > aNumber].
	^ index = 0
		ifTrue: [self levelThresholds size]
		ifFalse: [index - 1]