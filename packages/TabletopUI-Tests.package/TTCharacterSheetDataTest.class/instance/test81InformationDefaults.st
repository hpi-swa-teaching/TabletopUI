testing-information
test81InformationDefaults

	self characterSheet information keysDo: [:field |
		self assert: (self characterSheet informationAt: field) = '']