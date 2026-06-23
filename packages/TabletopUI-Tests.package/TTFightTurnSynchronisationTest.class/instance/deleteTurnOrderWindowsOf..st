cleanup
deleteTurnOrderWindowsOf: aSessionManager

	| ctx |
	ctx := self fightContextOf: aSessionManager.
	(ctx isKindOf: TTFightContext) ifTrue: [
		ctx display ifNotNil: [:d |
			d delete.
			ctx display: nil]]