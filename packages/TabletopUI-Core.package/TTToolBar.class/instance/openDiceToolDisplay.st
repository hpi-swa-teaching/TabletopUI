toolbuilder
openDiceToolDisplay

	self diceTool ifNil: [
	self diceTool: (TTDiceToolDisplay openWith: self characterAdministration and: self inputField).
	^self diceTool]
	ifNotNil: [
		self diceTool delete.
		self diceTool: nil.
		^nil]
