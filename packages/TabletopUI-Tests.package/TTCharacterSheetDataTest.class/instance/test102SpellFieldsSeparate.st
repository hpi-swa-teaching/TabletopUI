testing-spellcasting
test102SpellFieldsSeparate

	self characterSheet spell2Slot1Name: 'Mindblowing Meteor'.
	self characterSheet spell2Slot2Name: 'Even More Mindblowing Meteor'.
	self assert: self characterSheet spell2Slot1Name equals: 'Mindblowing Meteor'.
	self assert: self characterSheet spell2Slot2Name equals: 'Even More Mindblowing Meteor'