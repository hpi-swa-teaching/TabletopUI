as yet unclassified
proficiencyListSpec: aToolBuilder lookup: aLookupSymbol
	| proficiencyList childrenList frameCounter lineHeight |
	frameCounter := 0.
	lineHeight := 0.8 / (model perform: aLookupSymbol) size.
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
		frame: (LayoutFrame fractions: (0 @ frameCounter rect: 1 @ frameCounter + lineHeight)); yourself)].
	
	^ aToolBuilder pluggablePanelSpec new
		model: model;
		name: 'Attributes';
		children: childrenList;
		yourself