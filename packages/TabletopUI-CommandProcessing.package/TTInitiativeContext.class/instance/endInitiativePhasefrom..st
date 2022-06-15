as yet unclassified
endInitiativePhasefrom: aTTCharacter
	
	(aTTCharacter isGamemaster) ifTrue: [
		self rolls sort: [:anAssociation1 :anAssociation2 |
			(anAssociation1 value) > (anAssociation2 value)].
		self parser changeToFightContextWithWithFightOrder: rolls.
		^  self initiativeIsOverMessageString]
	ifFalse: [
		^ self onlyGMIsAllowedMessageString]