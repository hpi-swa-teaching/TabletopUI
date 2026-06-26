cleanup
deleteOrphanedTurnOrderWindows

	World allMorphsDo: [:m | (m respondsTo: #model) ifTrue: [(m model isKindOf: TTTurnOrderDisplay) ifTrue: [m delete]]]