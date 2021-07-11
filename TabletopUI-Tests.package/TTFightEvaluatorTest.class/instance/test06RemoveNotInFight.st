testing
test06RemoveNotInFight

	| output player |
	
	player := TTCharacter newWithName: 'test' role: TTCharacter player.
	output := self evaluator evaluateInput: ('remove ', player name) from: self gamemaster.
	
	self assert: output equals: 'FIGHT: ', (self evaluator ErrorNotInFight: player name).