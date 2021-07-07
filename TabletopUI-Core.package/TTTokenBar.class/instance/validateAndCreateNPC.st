npc creation
validateAndCreateNPC

	(self characterAdministration validateName: self currentName) ifTrue:[
		self createNPC]