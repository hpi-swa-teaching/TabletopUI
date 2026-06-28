screen management
determineBeforeStep

	self currentStep = #cantrips ifTrue: [^ #class].
	self currentStep = #spells ifTrue: [
		((self class cantrips at: (self choices at: #class)) isEmpty)
			ifTrue: [^ #class]
			ifFalse: [^ #cantrips]].
	self currentStep = #race ifTrue: [
		((self class spellsLevel1 at: (self choices at: #class)) isEmpty)
			ifTrue: [^ #class]
			ifFalse: [^ #spells]].
	self currentStep = #abilities ifTrue: [^ #race]
	