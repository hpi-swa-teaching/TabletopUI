testing - interaction
test13DeathSaveButtons

	| display |
	
	display := self openDisplay.
	display applyIncrementDeathSaveSuccesses.
	display applyIncrementDeathSaveFailures.
	self assert: display model deathSaveSuccesses equals: 1.
	self assert: display model deathSaveFailures equals: 1