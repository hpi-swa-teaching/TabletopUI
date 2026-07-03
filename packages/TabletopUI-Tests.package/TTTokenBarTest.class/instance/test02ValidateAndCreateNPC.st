testing
test02ValidateAndCreateNPC

	| networkmanager |
	
	networkmanager:= self window networkFacade networkmanager.
	self tokenBar validateAndCreateNPC.
	self 
		assert: networkmanager lastMessage = 'receiveCreateNPCUpdate:';
		assert: networkmanager lastRecipient = 'gamescreen'.
	self screen receiveCreateNPCUpdate: networkmanager lastParameters.
	self 
		assert: self tokenBar characterAdministration npcs size equals: 1;
		assert: self tokenBar characterAdministration npcs first role equals: TTCharacter npc;
		assert: self tokenBar characterAdministration npcs first name equals: 'Bert'
