npc creation
validateAndCreateNPC

	(self game isNameADuplicate: self currentName) ifTrue: [
		self game throwNameDuplicateException]
	ifFalse: [
		(self game isNameOverlong: self currentName) ifTrue: [
			self game throwOverlongNameException]
		ifFalse:[
			self createNPC]]