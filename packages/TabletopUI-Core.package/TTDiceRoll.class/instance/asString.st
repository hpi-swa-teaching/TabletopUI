string formatting
asString

	| output |
	
	output := self rollsWithModifier first asString.
	(self rollsWithModifier size > 1) ifTrue: [
		self rollsWithModifier
			removeFirst;
			do: [:aNumber | output := output , (self formatNumber: aNumber)].
		output := output , '=' , self resultValue asString].
	
	^ output