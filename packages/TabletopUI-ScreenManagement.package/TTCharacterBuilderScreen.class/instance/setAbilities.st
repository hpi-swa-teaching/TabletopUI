as yet unclassified
setAbilities
	
	| selection |
	
	selection := self getAbilitySelection.
		
	self setAbilitySelectionWith: selection.
	self changed: #nameList