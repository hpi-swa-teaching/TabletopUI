as yet unclassified
layoutInputFieldsWith: aNumber

	| hight width inputFields hightCounter |
	width := self class inputFieldWidth.
	hight := self class inputFieldHight.
	hightCounter := 0.2.
	
	inputFields := Array new: 4.
	1 to: 4 do: [:x | inputFields at: x put: ((hightCounter + (hight * x) @ 0.4) corner: (hightCounter + (hight * x)) @ (0.4 + width)) -> [self buildInputFieldSpec]].

	^ inputFields