testing - integration
test09Synchronization

	| firstDisplay secondDisplay | 
	
	firstDisplay := self openDisplay.
	secondDisplay := self openDisplay.
	
	firstDisplay model acrobaticsProficiency: 1.
	self assert: secondDisplay model acrobaticsProficiency = 1.
	
	firstDisplay model takeDamage: 5.
	self assert: firstDisplay model currentHP = secondDisplay model currentHP.