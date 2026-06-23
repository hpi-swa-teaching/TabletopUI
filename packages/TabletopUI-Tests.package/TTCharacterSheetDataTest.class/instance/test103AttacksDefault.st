testing-attacks
test103AttacksDefault

	1 to: 4 do: [:index |
		(self characterSheet attacks at: index) keysDo: [:field |
			self assert: (self characterSheet attack: index at: field) = '']]