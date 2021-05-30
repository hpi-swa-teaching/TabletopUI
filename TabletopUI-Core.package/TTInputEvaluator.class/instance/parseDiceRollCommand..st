dice roll
parseDiceRollCommand: aString

	^ {#rollCount -> (self extractDiceAmount: aString) .
		#diceSize -> (self extractDiceSize: aString) .
		#modifier -> (self extractModifier: aString)} asDictionary
