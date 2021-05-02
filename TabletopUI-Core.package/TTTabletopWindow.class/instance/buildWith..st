toolbuilder
buildWith: builder

	| windowSpec |
	
	windowSpec := self buildWindowWith: builder specs: {
		(0.5@0 corner: 1@0.7) -> [self actionLog buildWith: builder].
		(0.5@0.75 corner: 1@1) -> [self inputField buildWith: builder].
	}.
	windowSpec label: 'placy'.
	windowSpec extent: 800@500.
	
	^ builder build: windowSpec