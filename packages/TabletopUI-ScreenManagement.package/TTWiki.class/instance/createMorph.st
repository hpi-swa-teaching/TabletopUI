multipanel
createMorph

	| scrollPane |
	scrollPane := ScrollPane new.
	scrollPane
		hResizing: #spaceFill;
		vResizing: #spaceFill.
		
	self
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
		
	scrollPane scroller changeTableLayout.
	scrollPane scroller listDirection: #topToBottom.
	scrollPane scroller addMorph: self fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
	^ scrollPane