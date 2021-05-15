as yet unclassified
layoutInputFieldsWith: aNumber

	| hight width inputFields hightCounter |
	width := self class inputFieldWidth.
	hight := self class inputFieldHight.
	hightCounter := 0.2.
	
	inputFields := Array new: aNumber.
	1 to: aNumber do: [:x | inputFields at: x put: (0.4 @ (hightCounter + (hight * x)) corner: ((0.4 + width) @ (hightCounter + (hight * (x+1))))) -> [self buildInputFieldSpec]].
	"for schleife?
	extra Methode
	Variablen weg?"

	^ inputFields