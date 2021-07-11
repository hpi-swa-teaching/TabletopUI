testing
test01DoNotParticipate

	| output player |
	
	player := TTCharacter newWithName: 'name' role: TTCharacter player.
	output := self evaluator evaluateInput: self rolld6 from: player.
	
	self assert: output equals: 'FIGHT: ', (self evaluator doNotParticipate)