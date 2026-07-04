updating
loadNewPlayer: name role: role
	
	| aTTCharacter |
	aTTCharacter:= self characterAdministration loadNewPlayer: name role: role.
	self gamescreen loadNewPlayer: aTTCharacter.