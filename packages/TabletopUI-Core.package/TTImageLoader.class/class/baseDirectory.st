as yet unclassified
baseDirectory

	^ (MCRepositoryGroup default repositories detect: [:repo | (repo respondsTo: #directory) and: ['*TabletopUI*' match: repo description]]) directory containingDirectory