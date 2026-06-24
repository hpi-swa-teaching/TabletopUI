as yet unclassified
removeDoubleClickedSelectionFor: aStep

	((self choices at: aStep) at: ((TTCharacterBuilderScreen options at: aStep) at: self selectedIndex)) ~= 0
		ifTrue: [(self remainingOptions at: aStep) add: ((self choices at: aStep) at: ((TTCharacterBuilderScreen options at: aStep) at: self selectedIndex)).
			(self choices at: aStep) at: ((TTCharacterBuilderScreen options at: aStep) at: self selectedIndex) put: 0]