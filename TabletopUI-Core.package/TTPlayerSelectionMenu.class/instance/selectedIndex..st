accessing
selectedIndex: aNumber

	(aNumber > 0) ifTrue: [
		self
			index: aNumber;
			changed: #index;
			updateInputEvaluator]
	