roll for initiative
endInitiativePhaseFrom: aTTCharacter
	
	self initiativeReady ifFalse: [ ^ self initiativeNotReadyErrorString] .
	(aTTCharacter isGamemaster) ifFalse: [ ^ self onlyGMIsAllowedMessageString].
	
	self rolls sort: [:anAssociation1 :anAssociation2 |
		(anAssociation1 value) > (anAssociation2 value)].
	self parser changeToFightContextWithWithFightOrder: self playersWhoRolled.
	^  self initiativeIsOverMessageString
	