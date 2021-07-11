test	ing
test01StartFightAsPlayer

	| output |

	output := self evaluator evaluateInput: 'start fight' from: self randomPlayer.
	self assert: output equals: self evaluator messageNotAuthorised