testing-identity
test80IdentityFieldsSeparate

	self characterSheet alignment: 'Chaotic good'.
	self characterSheet race: 'Elf'.
	self assert: self characterSheet alignment = 'Chaotic good'.
	self assert: self characterSheet race = 'Elf'.