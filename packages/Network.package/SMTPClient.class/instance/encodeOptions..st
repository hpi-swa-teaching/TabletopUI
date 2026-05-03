utility
encodeOptions: optionsDict

	| optionsString |
	optionsString := (optionsDict associations collect: [:assoc |
		assoc value isEmpty
			ifTrue: [assoc key asString]
			ifFalse: [ | valuesString |
				valuesString := (assoc value isCollection and: [assoc value isString not])
					ifTrue: [(assoc value collect: #asString) joinSeparatedBy: ',']
					ifFalse: [assoc value asString].
				assoc key asString , '=' , valuesString]])
		joinSeparatedBy: String space.
	optionsString ifNotEmpty: [optionsString := String space , optionsString].
	^ optionsString