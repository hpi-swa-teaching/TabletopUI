actions
modifierChanged: aText

	aText = '' ifTrue: [
		self modifier: 0]
	ifFalse: [
		self modifier: aText asNumber]
	