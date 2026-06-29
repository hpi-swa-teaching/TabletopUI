testing
test03StartFight
	
	| command |
	command := self parser parse: 'start fight'.
	self assert: (command isKindOf: TTStartCommand).
	self assert: (command action isKindOf: TTFightCommand).
	