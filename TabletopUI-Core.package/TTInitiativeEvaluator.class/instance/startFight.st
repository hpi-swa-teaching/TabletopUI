roll for initiative
startFight

	self rolls sort: [:anAssociation1 :anAssociation2 | (anAssociation1 value) > (anAssociation2 value)].
	self inputField changeToFightEvaluatorWithFightOrder: self playersWhoRolled.
			
	^ 'The fight begins!'
