fight
endFightingAs: aTTPlayer
	
	(aTTPlayer isGamemaster) ifTrue: [
		self inputField changeToDefaultEvaluator.
		self display delete.
		^  self fightIsOver]
	ifFalse: [
		^ self ErrorNotAuthorised]