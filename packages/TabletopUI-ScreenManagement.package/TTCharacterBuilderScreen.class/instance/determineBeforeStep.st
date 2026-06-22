as yet unclassified
determineBeforeStep

	self currentStep = #cantrips ifTrue: [^ #class].
	self currentStep = #spells ifTrue: [
		((TTCharacterBuilderScreen cantrips at:( self choices at: #class)) size > 0 )
			ifTrue: [^ #cantrips]
			ifFalse: [^ #class]].
	self currentStep = #race ifTrue: [
		((TTCharacterBuilderScreen spellsLevel1 at:( self choices at: #class)) size > 0 )
			ifTrue: [^ #spells]
			ifFalse: [^ #class]].
	self currentStep = #abilities ifTrue: [^ #race].
	