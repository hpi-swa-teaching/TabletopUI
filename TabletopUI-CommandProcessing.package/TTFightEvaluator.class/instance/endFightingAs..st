fight
endFightingAs: aTTPlayer
	
	(aTTPlayer isGamemaster) ifTrue: [
		self inputField changeToDefaultEvaluator.
		self display delete.
		^  self messageFightIsOver]
	ifFalse: [
		^ self messageNotAuthorised]