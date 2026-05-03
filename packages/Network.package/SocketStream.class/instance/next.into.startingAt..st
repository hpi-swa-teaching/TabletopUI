stream in
next: anInteger into: aCollection startingAt: startIndex
	"Read n objects into the given collection. 
	Return aCollection or a partial copy if less than
	n elements have been read."

	"Implementation note: This method DOES signal timeout if not 
	enough elements are received. It does NOT signal
	ConnectionClosed as closing the connection is the only way by
	which partial data can be read."

	| amount |
	amount := self readInto: aCollection startingAt: startIndex count: anInteger.
	^amount < anInteger 
		ifTrue:[aCollection copyFrom: 1 to:  startIndex + amount-1]
		ifFalse:[aCollection]