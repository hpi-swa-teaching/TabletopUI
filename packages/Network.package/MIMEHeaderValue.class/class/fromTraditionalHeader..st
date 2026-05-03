instance creation
fromTraditionalHeader: aString
	"This is a traditional non-MIME header (like Subject:) and so should be stored whole. 
	This assumes a string without any special encodings (e.g. q encoding)."

	| newValue |

	newValue := self new.
	newValue mainValue: aString.
	newValue parameters: #().
	^newValue.
