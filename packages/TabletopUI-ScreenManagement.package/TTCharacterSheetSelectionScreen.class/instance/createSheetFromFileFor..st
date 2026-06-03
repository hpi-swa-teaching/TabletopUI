selecting preset
createSheetFromFileFor: anIndex

	| file stream |
	file := (FileStream readOnlyFileNamed: ((self characterSheets at: anIndex) asString)) binary.
	stream := ReferenceStream on: file.
	((self characterAdministration players) at: anIndex) sheet: stream next.
	stream close