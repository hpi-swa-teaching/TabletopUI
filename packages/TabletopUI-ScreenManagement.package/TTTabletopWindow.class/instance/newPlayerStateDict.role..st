server session management
newPlayerStateDict:name role: role

	| stateJSON |
	stateJSON:= self gameState.

	^		
		Dictionary new
			at: #character
				put:
					(Dictionary new
						at: #role put: role;
						at: #name put: name;
						yourself);
			yourself