testing
test01End

	| command |
	command := TTEndCommand new
		action: TTMockCommand new;
		yourself.
		
	command execute: self context from: self character.
	self assert: command action hasBeenEnded