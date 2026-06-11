accessing
setRole: aLiteral

	(aLiteral = #gamemaster) ifTrue: [self setAsGamemaster] ifFalse: [self setAsPlayer]