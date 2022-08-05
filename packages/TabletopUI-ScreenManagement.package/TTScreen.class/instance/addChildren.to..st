toolbuilder
addChildren: aDictionary to: aPluggablePanelSpec
		
	| aSpec |
			
	aDictionary keysAndValuesDo:  [ :aRectangle :aBlockClosure |
		aSpec := aBlockClosure value.
		aSpec frame: aRectangle.
		aPluggablePanelSpec children add: aSpec]