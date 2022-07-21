toolbuilder
diceButtonSpec: aToolBuilder for: aDiceType

	^ aToolBuilder pluggablePanelSpec new
		name: aDiceType;
		children: (OrderedCollection new
			add:(aToolBuilder pluggableTextSpec new
				frame: (0@0 rect: 0.35@1);
				name: aDiceType, ' amount';
				readOnly: true;
				indicateUnacceptedChanges: false;
				getText: (aDiceType, 'Changed') asSymbol;
				model: self;
				yourself);
			add:(aToolBuilder pluggableActionButtonSpec new
				frame: (0.4@0 rect: 1@1);
				name: aDiceType, ' roll';
				label: aDiceType;
				model: self;
				action: ('select', aDiceType) asSymbol;
				yourself);
			yourself);
		frame: (self diceTypesPositions at: aDiceType);
		yourself