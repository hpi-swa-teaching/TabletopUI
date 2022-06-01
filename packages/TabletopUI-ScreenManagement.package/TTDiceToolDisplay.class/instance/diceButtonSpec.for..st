toolbuilder
diceButtonSpec: aToolBuilder for: aDiceType

	^ aToolBuilder pluggableActionButtonSpec new
		frame: (self diceTypesPositions at: aDiceType);
		name: aDiceType;
		label: aDiceType;
		model: self;
		action: ('select', aDiceType) asSymbol;
		yourself