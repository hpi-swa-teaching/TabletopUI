initialize-release
newWithToken: aString
	
	| dPos count type|
	
	dPos := aString indexOf: $d.
	dPos = 1  ifTrue: [
		count := 1] ifFalse: [
		count := (aString copyFrom: 1 to: dPos - 1) asInteger].
	
	type := (aString copyFrom: dPos + 1 to: aString size) asInteger.
	
	^ self new
		count: count;
		type: type;
		yourself