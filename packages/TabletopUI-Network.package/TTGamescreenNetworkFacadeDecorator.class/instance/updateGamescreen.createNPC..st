updating
updateGamescreen: aTTGamescreen createNPC: aTTCharacter

	| name params gamescreenId |
	gamescreenId := self getIdOf: aTTGamescreen.
	
	name := aTTCharacter name.
	params := Dictionary new
		at: 'name' put: name;
		at: 'receiver' put: 'server';
		yourself.
	
	self send: 'receiveCreateNPCUpdate:' to: gamescreenId with: params