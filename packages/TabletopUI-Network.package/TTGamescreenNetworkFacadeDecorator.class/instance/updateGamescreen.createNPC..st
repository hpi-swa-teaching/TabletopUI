as yet unclassified
updateGamescreen: aTTGamescreen createNPC: aTTCharacter

	| name params gamescreenId |
	
	gamescreenId:= self networkFacade getIdOf: aTTGamescreen.
	
	name:= aTTCharacter name.
	params:= Dictionary new
		at: 'name' put: name;
		at: 'receiver' put: 'server';
		yourself. 
	
	self networkFacade send: 'receiveCreateNPCUpdate:' to: gamescreenId with: params.