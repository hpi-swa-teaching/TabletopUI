as yet unclassified
baseDirectory

	^ (MCRepositoryGroup default repositories
		detect: [:repo | (repo respondsTo: #directory) and: 
		[repo goferReferences anySatisfy: [:ref | ref name beginsWith: 'TabletopUI']]]) directory containingDirectory