initialize-release
newWithToken: aString
	
	| dPos type count |
	
	dPos := aString indexOf: $d.
	dPos = 1  ifTrue: [
		count := 1] ifFalse: [
		count := (aString copyFrom: 1 to: dPos - 1) asInteger].
	
	type := (aString copyFrom: dPos + 1 to: aString size) asInteger.
	
	^ self new
		diceRoll: 
			(TTDiceRoll newWithRollCount: count diceSize: type modifier: 0);
		yourself