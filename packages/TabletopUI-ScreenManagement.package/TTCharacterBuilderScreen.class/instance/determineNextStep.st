screen management
determineNextStep

	self currentStep = #class ifTrue: [
		((self class cantrips at: (self choices at: #class)) isEmpty)
			ifTrue: [^ #race]
			ifFalse: [^ #cantrips]].
	self currentStep = #cantrips ifTrue: [
		((self class spellsLevel1 at: (self choices at: #class)) isEmpty)
			ifTrue: [^ #race]
			ifFalse: [^ #spells]].
	self currentStep = #spells ifTrue: [^ #race].
	self currentStep = #race ifTrue: [^ #abilities].
	