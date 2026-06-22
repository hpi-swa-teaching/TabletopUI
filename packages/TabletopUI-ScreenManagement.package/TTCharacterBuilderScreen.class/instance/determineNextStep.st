as yet unclassified
determineNextStep

	self currentStep = #class ifTrue: [^ #cantrips].
	self currentStep = #cantrips ifTrue: [^ #spells].
	self currentStep = #spells ifTrue: [^ #race].
	self currentStep = #race ifTrue: [^ #abilities].
	