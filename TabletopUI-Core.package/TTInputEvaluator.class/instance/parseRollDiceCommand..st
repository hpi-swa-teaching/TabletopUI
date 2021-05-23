dice roll
parseRollDiceCommand: aString

	^ {#rollCount -> (self extractRollCount: aString) .
		#diceSize -> (self extractDiceSize: aString) .
		#modifier -> (self extractModifier: aString)} asDictionary
