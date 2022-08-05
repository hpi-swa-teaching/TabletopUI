testing
test08RollConstant
	
	| command |
	command := parser parse: 'roll 20'.
	self assert: (command isKindOf: TTRollCommand).
	self assert: (command rollable isKindOf: TTIntCommand)