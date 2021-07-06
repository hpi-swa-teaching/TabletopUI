npc creation
validateAndCreateNPC

	(self game validateName: self currentName) ifTrue:[
		self createNPC]