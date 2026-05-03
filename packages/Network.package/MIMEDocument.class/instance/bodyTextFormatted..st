serializing
bodyTextFormatted: shouldPreferRichText
	"Answer a string or text representing the content of the receiver."

	^ self bodyTextFormatted: shouldPreferRichText showAttachments: true