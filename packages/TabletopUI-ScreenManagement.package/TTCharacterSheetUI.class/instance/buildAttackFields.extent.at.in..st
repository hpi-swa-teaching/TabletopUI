build
buildAttackFields: anArray extent: anExtent at: aPoint in: aMorph

	| xDistance yDistance |
	xDistance := anExtent x + 15.
	yDistance := 60.
	1 to: TTCharacterSheetData attackCount do: [:row |
		anArray doWithIndex: [:field :column |
			| position symbol |
			position := aPoint + ((xDistance * (column - 1)) @ (yDistance * (row - 1))).
			symbol := ('attack' , row asString , field asString capitalized) asSymbol.
			self addEditableField: symbol
				sized: anExtent
				at: position
				in: aMorph]]