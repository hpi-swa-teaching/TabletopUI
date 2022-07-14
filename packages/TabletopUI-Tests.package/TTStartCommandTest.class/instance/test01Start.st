testing
test01Start

	| command |
	command := TTStartCommand new
		action: TTMockCommand new;
		yourself.
		
	command execute: self context from: self character.
	self assert: command action hasBeenStarted