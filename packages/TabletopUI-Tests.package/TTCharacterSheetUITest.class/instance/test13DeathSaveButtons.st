testing - interaction
test13DeathSaveButtons

	| display |
	
	display := self openDisplay.
	display applyIncrementDeathSaveSuccesses.
	display applyIncrementDeathSaveFailures.
	self assert: display model deathSaveSuccesses = 1.
	self assert: display model deathSaveFailures = 1