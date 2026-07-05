testing
test01CreateNPC

	| networkmanager |
	
	networkmanager:= self window networkFacade networkManager.
	self tokenBar createNPC.
	self 
		assert: networkmanager lastMessage = 'receiveCreateNPCUpdate:'.
	self screen receiveCreateNPCUpdate: networkmanager lastParameters.
	self 
		assert: self tokenBar characterAdministration npcs size equals: 1;
		assert: self tokenBar characterAdministration npcs first role equals: TTCharacter npc;
		assert: self tokenBar characterAdministration npcs first name equals: 'Bert'
