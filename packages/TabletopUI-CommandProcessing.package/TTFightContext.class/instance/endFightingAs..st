fight
endFightingAs: aTTPlayer

	aTTPlayer isGamemaster
		ifTrue: [
			self manager updateToDefaultContext.
			self display ifNotNil: [self display delete].
			^ self fightIsOverMessageString]
		ifFalse: [^ self onlyGMIsAllowedMessageString]