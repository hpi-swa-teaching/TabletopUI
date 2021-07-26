as yet unclassified
baseDirectory

	^ (MCRepositoryGroup default repositories detect: [:repo | (repo respondsTo: #directory) and: [repo description endsWith: 'TabletopUI']]) directory containingDirectory