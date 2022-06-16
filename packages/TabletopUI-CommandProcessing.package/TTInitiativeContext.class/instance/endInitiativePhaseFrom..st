roll for initiative
endInitiativePhaseFrom: aTTCharacter
	
	(aTTCharacter isGamemaster) ifTrue: [
		self rolls sort: [:anAssociation1 :anAssociation2 |
			(anAssociation1 value) > (anAssociation2 value)].
		self parser changeToFightContextWithWithFightOrder: self playersWhoRolled.
		^  self initiativeIsOverMessageString]
	ifFalse: [
		^ self onlyGMIsAllowedMessageString]