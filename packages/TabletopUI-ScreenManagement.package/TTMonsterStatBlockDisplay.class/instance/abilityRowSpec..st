toolbuilder
abilityRowSpec: aToolBuilder

	| n cells |
	cells := {
		#strengthCellText.
		#dexterityCellText.
		#constitutionCellText.
		#intelligenceCellText.
		#wisdomCellText.
		#charismaCellText}.
		
	n := cells size.
	^ aToolBuilder pluggablePanelSpec new
		model: self;
		children: (cells collectWithIndex: [:selector :i |
			self
				readOnlyTextSpec: aToolBuilder
				getText: selector
				frame: (LayoutFrame fractions: ((i - 1) / n @ 0 rect: i / n @ 1))])
				asOrderedCollection;
		yourself
