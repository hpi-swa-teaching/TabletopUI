view management
addCurrentView

	| selector |
	selector := (self activeView , 'View') asSymbol.
	(self respondsTo: selector) ifTrue: [self perform: selector]
