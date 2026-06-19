toolbuilder
abilityRowSpec: aToolBuilder

	| cells |
	cells := {
		#strengthCellText.
		#dexterityCellText.
		#constitutionCellText.
		#intelligenceCellText.
		#wisdomCellText.
		#charismaCellText}.

	^ aToolBuilder pluggablePanelSpec new
		model: self;
		children: ((1 to: cells size) collect: [:i |
			self
				abilityCellSpec: aToolBuilder
				getText: (cells at: i)
				frame: (LayoutFrame fractions: ((i - 1) / cells size @ 0 rect: i / cells size @ 1))])
				asOrderedCollection;
		yourself
