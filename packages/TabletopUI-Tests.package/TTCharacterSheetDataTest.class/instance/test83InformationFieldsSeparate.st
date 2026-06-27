testing-information
test83InformationFieldsSeparate

	self characterSheet inventory: 'Huge amounts of trash'.
	self characterSheet personalityTraits: 'Being a prick'.
	self assert: self characterSheet inventory equals: 'Huge amounts of trash'.
	self assert: self characterSheet personalityTraits equals: 'Being a prick'.