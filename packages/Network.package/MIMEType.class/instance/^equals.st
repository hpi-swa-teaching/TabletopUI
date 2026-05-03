comparing
= anotherObject
	anotherObject class == self class
		ifFalse: [^false].
	^self main asLowercase = anotherObject main asLowercase
		and: [self sub asLowercase = anotherObject sub asLowercase]