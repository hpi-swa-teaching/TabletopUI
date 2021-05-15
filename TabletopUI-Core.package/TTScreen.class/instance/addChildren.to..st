toolbuilder
addChildren: aDictionary to: aPluggablePanelSpec
	
	aDictionary keysAndValuesDo:  [:aRectangle :aBlockClosure |
		| aSpec |
		aSpec := aBlockClosure value.
		aSpec ifNotNil: [
			aSpec frame: aRectangle.
			aPluggablePanelSpec children add: aSpec]]