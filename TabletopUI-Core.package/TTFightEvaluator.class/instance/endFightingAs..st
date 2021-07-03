fight
endFightingAs: aTTPlayer
	
	(aTTPlayer isGamemaster) ifTrue: [
		self inputField changeToDefaultEvaluator.
		self display delete.
		^  ' ... The fight is over.']
	ifFalse: [
		^ self ErrorNotAuthorised]