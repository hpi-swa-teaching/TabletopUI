as yet unclassified
selectedIndex: aNumber

	self index: aNumber.
	self changed: #index.
	self updateInputEvaluator
	