instance creation
forField: aFName fromString: aString
	"Create a MIMEHeaderValue from aString.  How it is parsed depends on whether it is a MIME specific field or a generic header field."

	| decodedString |
	decodedString := [aString decodeMimeHeader]
		on: InvalidUTF8 , NoConverterFound do: [:e | aString].	
	(aFName beginsWith: 'content-') 
		ifTrue: [^self fromMIMEHeader: decodedString]
		ifFalse: [^self fromTraditionalHeader: decodedString]
