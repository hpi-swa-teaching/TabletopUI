fight
endFightingAs: aTTPlayer

	aTTPlayer isGamemaster
		ifTrue: [
			self parser updateToDefaultContext.
			self display ifNotNil: [self display delete].
			^ self fightIsOverMessageString]
		ifFalse: [^ self onlyGMIsAllowedMessageString]