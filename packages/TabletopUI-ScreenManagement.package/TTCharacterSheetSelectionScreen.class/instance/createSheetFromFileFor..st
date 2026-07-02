selecting preset
createSheetFromFileFor: anIndex

	| templateName file stream |
	templateName := self characterSheets at: anIndex.
	file := (FileStream readOnlyFileNamed: templateName) binary.
	stream := ReferenceStream on: file.
	[ (self characterAdministration players at: anIndex) sheet: stream next ]
		ensure: [ stream close ]