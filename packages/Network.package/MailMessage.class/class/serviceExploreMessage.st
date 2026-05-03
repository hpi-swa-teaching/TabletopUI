file services
serviceExploreMessage

	^ SimpleServiceEntry
		provider: self
		label: 'explore mail message' translated
		selector: #exploreFromFileNamed:
		description: 'open a mail message in an explorer' translated
		buttonLabel: 'explore mail message' translated