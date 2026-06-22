as yet unclassified
setDoubleClickedSelectionWith: selection at: aStep

	selection = 0 
		ifFalse: [(#(0 '0') includes: ((self remainingOptions at: aStep) at: selection))
				ifTrue: [self removeDoubleClickedSelectionFor: aStep]
				ifFalse: [
					(self choices at: aStep) 
						at: (((TTCharacterBuilderScreen options) at: aStep) 
							at: self selectedIndex) put: ((self remainingOptions at: aStep) at: selection).
					(self remainingOptions at: aStep) 
						remove: ((self remainingOptions at: aStep) at: selection)]]