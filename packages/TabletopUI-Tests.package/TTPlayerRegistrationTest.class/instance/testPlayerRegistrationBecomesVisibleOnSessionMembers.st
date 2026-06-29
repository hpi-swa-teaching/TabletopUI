testing
testPlayerRegistrationBecomesVisibleOnSessionMembers
    
	
	self registerValidPlayer.
	self assert: (self hasPlayer: self sessionMembers first window Named: self acceptedPlayerName).
	
	self 
		assert: (((self informationIn: (self manager window) AboutPlayer: self acceptedPlayerName)
	= (self informationIn: (self sessionMembers first window) AboutPlayer: self acceptedPlayerName)));
		assert: (((self informationIn: (self manager window) AboutPlayer: self acceptedPlayerName) 
	=  (self informationIn: (self sessionMembers second window) AboutPlayer: self acceptedPlayerName))).
	