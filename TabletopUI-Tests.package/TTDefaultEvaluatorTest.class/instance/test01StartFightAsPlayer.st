test	ing
test01StartFightAsPlayer

	| output |

	output := self evaluator evaluateInput: 'start fight' from: self players first.
	self assert: output equals: self evaluator messageNotAuthorised