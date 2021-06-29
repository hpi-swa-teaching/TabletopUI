fight
endFightingAs: aTTPlayer
	
	| output |

	(aTTPlayer isGamemaster) ifTrue: [
		self inputField changeToDefaultEvaluator.
		self display delete.
		output :=  ' ... The fight is over.']
	ifFalse: [
		output := self ErrorNotAuthorised].

	^ output