as yet unclassified
allAbilitiesSelected

	(self choices at: 3) do: [ :ability |
		ability = 0 ifTrue: [ ^ false]].
	^ true