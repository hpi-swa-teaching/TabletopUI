testing
test05Open
	
	| systemWindow |
	systemWindow:= TTTabletopWindow openSessionless.
	self assert: (systemWindow model class = TTTabletopWindow).
	systemWindow abandon.