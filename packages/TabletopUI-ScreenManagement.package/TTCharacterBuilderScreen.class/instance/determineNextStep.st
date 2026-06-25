as yet unclassified
determineNextStep

	self currentStep = #class ifTrue: [
		((TTCharacterBuilderScreen cantrips at:( self choices at: #class)) size > 0 )
			ifTrue: [^ #cantrips]
			ifFalse: [^ #race]].
	self currentStep = #cantrips ifTrue: [
		((TTCharacterBuilderScreen spellsLevel1 at:( self choices at: #class)) size > 0 )
			ifTrue: [^ #spells]
			ifFalse: [^ #race]].
	self currentStep = #spells ifTrue: [^ #race].
	self currentStep = #race ifTrue: [^ #abilities].
	