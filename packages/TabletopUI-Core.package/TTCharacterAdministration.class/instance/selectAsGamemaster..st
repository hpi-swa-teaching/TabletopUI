accessing
selectAsGamemaster: aTTCharacter

	self players do: [ :player |
		player role: TTCharacter player].

	aTTCharacter role: TTCharacter gamemaster