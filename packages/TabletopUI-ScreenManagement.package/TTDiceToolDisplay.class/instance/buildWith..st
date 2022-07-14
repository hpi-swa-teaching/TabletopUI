toolbuilder
buildWith: aToolBuilder

	^ aToolBuilder
		build:
			(aToolBuilder pluggableWindowSpec new
				extent: self defaultExtent;
				color: #red;
				label: 'Dice Tool';
				model: self;
				closeAction: #close;
				children:
						(OrderedCollection new
							add: (self diceButtonSpecs: aToolBuilder);
							add: (aToolBuilder pluggableInputFieldSpec new
								frame: (0.05 @ 0.65 rect: 0.95 @ 0.75);
								name: 'modifier';
								model: self;
								setText: #modifierChanged:;
								yourself);
							add: (aToolBuilder pluggableActionButtonSpec new
								frame: (0.05 @ 0.75 rect: 0.95 @ 0.85);
								name: 'roll';
								label: 'roll';
								model:self;
								action: #rollDice;
								yourself);
							add: (aToolBuilder pluggableActionButtonSpec new
								frame: (0.05 @ 0.85 rect: 0.95 @ 0.95);
								name: 'reset';
								label: 'reset';
								model:self;
								action: #reset;
								yourself);
							yourself);
				yourself).