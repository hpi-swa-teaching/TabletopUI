screen management
allAbilitiesSelected

	(self choices at: #abilities) do: [ :ability |
		ability = 0 ifTrue: [ ^ false]].
	^ true