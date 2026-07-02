testing
test18testNameListForAbilitiesOneSelected

	| result |
	self screen currentStep: #abilities. 
	(self screen choices at: #abilities) at: #strength put: 8.
	result := self screen nameList. 

	self assert: result size equals: 6.
	self assert: (result includes: '[ 8 ] strength').
	self assert: (result includes: '[ not selected ] dexterity').
	self assert: (result includes: '[ not selected ] constitution').
	self assert: (result includes: '[ not selected ] intelligence').
	self assert: (result includes: '[ not selected ] wisdom').
	self assert: (result includes: '[ not selected ] charisma')