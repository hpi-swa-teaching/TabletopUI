file services
serviceViewMessage

	^ SimpleServiceEntry
		provider: self
		label: 'view mail message' translated
		selector: #viewFromFileNamed:
		description: 'view contents of the mail message' translated
		buttonLabel: 'view mail message' translated