initialization
initializeFormFor: aTTCharacter

	aTTCharacter isNPC ifTrue: [
		self newForm: self NPCForm. 
		^ self ].
	
	aTTCharacter isMonster ifTrue: [
		self newForm: (self monsterForm: aTTCharacter name).
		^ self ].
		
	aTTCharacter token = TTCharacter defaultTokenName
		ifTrue: [self newForm: self defaultPlayerForm]
		ifFalse: [self newForm: (self customizedPlayerFormWith: aTTCharacter token)]