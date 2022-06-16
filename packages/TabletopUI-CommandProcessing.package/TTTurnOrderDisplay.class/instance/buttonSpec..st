toolbuilder
buttonSpec: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self fightContext;
		name: 'nextPlayerButton';
		label: 'next player';
		action: #proceedToNextPlayer;
		yourself