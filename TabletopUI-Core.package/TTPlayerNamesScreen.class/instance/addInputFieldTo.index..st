toolbuilder
addInputFieldTo: aDictionary index: aNumber

	| hight width |
	width := self class inputFieldWidth.
	hight := self class inputFieldHight.
	
	aDictionary add: (0.4 @ (0.2 + (hight * aNumber)) corner: ((0.4 + width) @ (0.2 + (hight * (aNumber + 1))))) -> [self createNameInputFieldSpecWith: aNumber]