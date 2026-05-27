view management
addCurrentViewTo: aTransformationMorph

	self activeView = #console ifTrue: [
		self gameScreen actionLog addConsoleTo: aTransformationMorph.
		^ self gameScreen inputField addInputFieldTo: aTransformationMorph].

	self activeView = #players ifTrue: [
		^ self gameScreen playerSelectionMenu addPlayerSelectionMenuTo: aTransformationMorph].
	
	^ self addDefaultView