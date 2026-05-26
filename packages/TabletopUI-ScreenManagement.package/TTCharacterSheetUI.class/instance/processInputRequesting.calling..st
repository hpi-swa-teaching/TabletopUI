input handling
processInputRequesting: aString calling: aBlock

	| amountString amount |
	amountString := UIManager default request: aString.
	(amountString isNil or: [amountString isEmpty]) ifTrue: [^ self].
	amount := amountString asNumber.
	amount > 0 ifTrue: [aBlock value: self model value: amount].