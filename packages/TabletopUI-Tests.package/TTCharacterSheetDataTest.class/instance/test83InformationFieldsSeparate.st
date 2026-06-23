testing-information
test83InformationFieldsSeparate

	self characterSheet inventory: 'Huge amounts of trash'.
	self characterSheet personalityTraits: 'Being a prick'.
	self assert: self characterSheet inventory = 'Huge amounts of trash'.
	self assert: self characterSheet personalityTraits = 'Being a prick'.