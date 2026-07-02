button management
createButtonSpecWith: aToolBuilder forViewSymbol: aViewSymbol

	| index |
	index := self buttonKeys indexOf: aViewSymbol.
	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (self buttonWidth * (index - 1) @ 0 corner: self buttonWidth * index @ 1);
		label: aViewSymbol asString capitalized;
		action: ('open' , aViewSymbol asString capitalized) asSymbol;
		color: (aViewSymbol asString , 'Color') asSymbol;
		yourself