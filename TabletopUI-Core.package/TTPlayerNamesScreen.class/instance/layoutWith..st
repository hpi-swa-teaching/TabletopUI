toolbuilder
layoutWith: aNumber

	| layoutElements |
		
	layoutElements := Dictionary new.
	1 to: aNumber do: [:aNumberIndex | self addInputFieldTo: layoutElements index: aNumberIndex].
	self addContinueButtonTo: layoutElements.
	self addLeaveButtonTo: layoutElements.
	
	^ layoutElements