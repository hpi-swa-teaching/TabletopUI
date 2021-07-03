npc creation
validateAndCreateNPC

	(self game isNameADuplicate: self currentName) ifTrue: [
		self game throwNameDuplicateException]
	ifFalse: [
		(self game isNameLengthInvalid: self currentName) ifTrue: [
			self game throwInvalidNameLengthException]
		ifFalse:[
			self createNPC]]