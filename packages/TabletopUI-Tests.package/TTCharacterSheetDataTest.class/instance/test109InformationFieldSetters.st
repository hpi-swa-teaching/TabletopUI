testing-information
test109InformationFieldSetters

	self characterSheet information keysDo: [:field |
		self characterSheet perform: (field asString , ':') asSymbol with: ''.
		self assert: (self characterSheet informationAt: field) = '']