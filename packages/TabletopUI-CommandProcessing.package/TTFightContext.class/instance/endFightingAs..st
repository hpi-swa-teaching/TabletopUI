fight
endFightingAs: aTTPlayer
	
	(aTTPlayer isGamemaster) ifTrue: [
		self parser changeToDefaultContext.
		self display ifNotNil: [self display delete].
		^  self fightIsOverMessageString]
	ifFalse: [
		^ self onlyGMIsAllowedMessageString]