toolbuilder
diceButtonSpecs: aToolBuilder

	|tempChildren|
	
	tempChildren := OrderedCollection new.
	self diceTypesPositions keys do: [:aDiceType |
	tempChildren add: (self diceButtonSpec: aToolBuilder for: aDiceType)].
	^ aToolBuilder pluggablePanelSpec new
		name: 'dices';
		children: tempChildren;
		frame: (0 @ 0 rect: 1 @ 1);
		yourself