initialization
updateNewContext: aContext
(aContext isNil) ifFalse: [
	((aContext gameState = #fight and: self context gameState = #fight) and: self isGamemaster )ifTrue: [
		aContext display model fightContext: self context.
		self context display model: aContext display]]