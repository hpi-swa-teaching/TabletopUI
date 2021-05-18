as yet unclassified
layoutInputFieldsWith: aNumber

	| hight width inputFields hightCounter |
	width := self class inputFieldWidth.
	hight := self class inputFieldHight.
	hightCounter := 0.2.
	
	inputFields := Dictionary new.
	1 to: aNumber do: [:x | inputFields add: (0.4 @ (hightCounter + (hight * x)) corner: ((0.4 + width) @ (hightCounter + (hight * (x+1))))) -> [self buildInputFieldSpec]].
	inputFields add: ((0.4 @ 0.1) corner: ((0.6) @ (0.2))) -> [self buildContinueButtonSpec].
	inputFields add: ((0.6 @ 0.1) corner: ((0.4 + width) @ (0.2))) -> [self buildLeaveButtonSpec].
	"for schleife?
	extra Methode
	Variablen weg?"

	^ inputFields