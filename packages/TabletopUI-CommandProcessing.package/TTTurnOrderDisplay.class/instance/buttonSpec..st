toolbuilder
buttonSpec: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self fightEvaluator;
		name: 'nextPlayerButton';
		label: 'next player';
		action: #proceedToNextPlayer;
		yourself