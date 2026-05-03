utility
determineResponseMessage

	self lastResponse size <= 4 ifTrue: [^ String empty].
	^ (self lastResponse lines collect: [:l | self valueOfResponseLine: l]) 
		joinSeparatedBy: String cr