updating
applyCreateNPCUpdateOnGamescreen: aTTGamescreen with: params

	| name character gamescreenId |
	name := params at: 'name'.
	character := TTCharacter newWithName: name role: TTCharacter npc.
	
	gamescreenId := self getIdOf: aTTGamescreen.
	
	aTTGamescreen addNPCToGameState: character.
	
	(params at: 'receiver') = 'server' ifFalse: [^ self].
	params at: 'receiver' put: 'client'.
	self send: 'receiveCreateNPCUpdate:' to: gamescreenId with: params