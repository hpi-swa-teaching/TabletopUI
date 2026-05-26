as yet unclassified
newPlayerStateDict:name role: role

	^		
		Dictionary new
			at: #character
				put:
					(Dictionary new
						at: #role put: role;
						at: #name put: name;
						yourself);
			yourself