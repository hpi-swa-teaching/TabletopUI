accessing
rollsWithModifier

	(self modifier = 0) ifTrue: [
		^ self rolls copy]
	ifFalse: [
		^ self rolls copyWith: self modifier]