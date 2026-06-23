testing-attacks
test107AttackSetters

	1 to: 4 do: [:index |
		self characterSheet perform: (('attack' , index , 'DamageType:') asSymbol) with: '1d8'.
		self characterSheet perform: (('attack' , index , 'Bonus:') asSymbol) with: 8.
		self characterSheet perform: (('attack' , index , 'Damage:') asSymbol) with: 80.
		self characterSheet perform: (('attack' , index , 'Name:') asSymbol) with: 'Desperate Duplication']