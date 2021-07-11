testing
test05RemovePlayer

	| output player |
	
	player := self randomPlayer.
	output := self evaluator evaluateInput: 'remove ', player name from: self randomPlayer.
	self assert: output equals: 'FIGHT: ', (self evaluator messageNotAuthorised).
	
	output := self evaluator evaluateInput: ('remove ', player name) from: self gamemaster.
	self assert: output equals: 'FIGHT: Removed ' , player name , ' from fight.'