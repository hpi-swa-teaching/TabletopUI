toolbuilder
buttonSpec: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		name: 'nextPlayerButton';
		label: 'next player';
		action: #proceedToNextPlayer;
		yourself