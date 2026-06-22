as yet unclassified
determineBeforeStep

	self currentStep = #cantrips ifTrue: [^ #class].
	self currentStep = #spells ifTrue: [^ #cantrips].
	self currentStep = #race ifTrue: [^ #spells].
	self currentStep = #abilities ifTrue: [^ #race].
	