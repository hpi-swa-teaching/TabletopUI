initialization
newWithToken: aString

	^ self new
		value: aString asInteger;
		yourself