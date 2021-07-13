testing
test05RemoveNotInFight

	| output player |
	
	player := self players first.
	output := self evaluator evaluateInput: 'remove ', player name from: self players first.
	self assert: output equals: 'FIGHT: ', (self evaluator messageNotAuthorised).
	
	output := self evaluator evaluateInput: ('remove ', player name) from: self gamemaster.
	self assert: output equals: 'FIGHT: Removed ' , player name , ' from fight.'