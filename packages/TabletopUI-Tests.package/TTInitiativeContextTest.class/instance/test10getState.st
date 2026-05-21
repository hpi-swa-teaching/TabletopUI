testing
test10getState

	"| state playerKey |
	super test01GetState.
	
	state:= self context getState.
	
	self 
		assert: (state includesKey: #rolls);
		assert: ((state at: #rolls) isKindOf: Dictionary).
	playerKey:= (state at: #rolls) ifEmpty: [nil] ifNotEmpty: [:dict | dict keys anyOne].
	playerKey ifNil: [^self].
	self 
		assert: (((state at: #rolls) at: playerKey) isKindOf: Integer)."
	