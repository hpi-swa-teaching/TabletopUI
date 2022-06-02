as yet unclassified
proficiencyListSpec: aToolBuilder lookup: aLookupSymbol
	| proficiencyList childrenList frameCounter lineHeight |
	frameCounter := 0.
	lineHeight := 1.0 / ((model perform: aLookupSymbol) size + 1).
	proficiencyList := LinkedList new.
	(model perform: aLookupSymbol) keysAndValuesDo:
		[ :key :value | 
			proficiencyList add: {key asSymbol . value}].
	childrenList :=	LinkedList new.
	proficiencyList do:
		[ :pair | 
		frameCounter := frameCounter + lineHeight.
		childrenList add: ((self proficiencySpec: aToolBuilder 
				name: (((pair at: 1), 'Label') asSymbol) 
				multiplier: (((pair at: 1), 'Multiplier') asSymbol) 
				multiplierOnChange: (((pair at: 1), 'Multiplier:') asSymbol) 
				value: ((pair at: 1) asSymbol))
		frame: (0 @ frameCounter rect: 1 @ frameCounter + lineHeight))].
	
	^ aToolBuilder pluggablePanelSpec new
		model: model;
		name: 'Attributes';
		children: childrenList;
		yourself