string formatting
formatNumber: aNumber

	(aNumber positive) ifTrue: [
		^ '+' , aNumber asString]
	ifFalse: [
		^ '-', aNumber abs asString]
	