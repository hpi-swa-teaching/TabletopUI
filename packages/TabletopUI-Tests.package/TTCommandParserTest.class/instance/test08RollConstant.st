testing
test08RollConstant
	
	| command |
	command := self parser parse: 'roll 20'.
	self assert: (command isKindOf: TTRollCommand).
	self assert: (command rollable isKindOf: TTIntCommand)