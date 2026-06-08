as yet unclassified
testPlayerRegistrationBecomesVisibleOnSessionMembers
    
	
	self registerValidPlayer.
	self assert: (self sessionMembers first window hasPlayerNamed: self acceptedPlayerName).
	
	self assert: (((self manager window informationAboutPlayer: self acceptedPlayerName)
	 = (self sessionMembers first window informationAboutPlayer: self acceptedPlayerName)) 
	and:
	[(self manager window informationAboutPlayer: self acceptedPlayerName) 
	= (self sessionMembers second window informationAboutPlayer: self acceptedPlayerName)]).
	