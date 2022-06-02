as yet unclassified
proficiencyListSpec: aToolBuilder
	| proficiencyList childrenList frameCounter lineHeight |
	frameCounter := 0.
	lineHeight := 0.8 / model proficiencyLookup size.
	proficiencyList := LinkedList new.
	model proficiencyLookup keysAndValuesDo:
		[ :key :value | 
			proficiencyList add: {key asSymbol . value}].
	childrenList :=	LinkedList new.
	proficiencyList do:
		[ :pair | 
		frameCounter := frameCounter + lineHeight.
		childrenList add: ((self proficiencySpec: aToolBuilder name: #defaultText multiplier: #defaultText multiplierOnChange: #defaultText value: #defaultText)
		frame: (LayoutFrame fractions: (0 @ frameCounter rect: 1 @ frameCounter + lineHeight)); yourself)].
	
	^ aToolBuilder pluggablePanelSpec new
		model: model;
		name: 'Attributes';
		children: childrenList;
		yourself