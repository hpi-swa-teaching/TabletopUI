fight
endFightingAs: aTTPlayer
	
	(aTTPlayer isGamemaster) ifTrue: [
		self parser changeToDefaultContext.
		self display delete.
		^  self fightIsOverMessageString]
	ifFalse: [
		^ self onlyGMIsAllowedMessageString]