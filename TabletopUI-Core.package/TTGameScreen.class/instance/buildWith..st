accessing
buildWith: builder
		
	^self buildWithBuilder: builder children: {
		(0.5 @ 0 corner: 1 @ 0.75) -> [self actionLog buildWith: builder].
		(0.5 @ 0.75 corner: 1 @ 1) -> [self inputField buildWith: builder].
		(0 @ 0 corner: 0.5 @ 1) -> [self scrollPane buildWith: builder].
	}
		