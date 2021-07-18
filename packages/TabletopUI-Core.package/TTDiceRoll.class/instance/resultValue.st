result
resultValue

	^ self rolls inject: self modifier into: [:sum :roll | sum + roll]