as yet unclassified
allAbilitiesSelected

	(self choices at: 5) do: [ :ability |
		ability = 0 ifTrue: [ ^ false]].
	^ true