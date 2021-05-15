as yet unclassified
layoutInputFieldsWith: aNumber

	| hight width inputFields hightCounter widthCounter index |
	width := self class inputFieldWidth.
	hight := self class inputFieldHight.	
	hightCounter := 0.2.
	widthCounter := 0.4.
	index := 1.
	
	inputFields := Array new: aNumber.
	inputFields do: [:each | each := ((hightCounter @ widthCounter corner: (hightCounter + hight) @ (widthCounter + width)) -> [self buildInputFieldSpec]).
		hightCounter := hightCounter + hight].

	^ inputFields