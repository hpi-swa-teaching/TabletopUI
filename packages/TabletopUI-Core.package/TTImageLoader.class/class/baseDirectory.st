pass access
baseDirectory

	^ (MCRepositoryGroup default repositories detect: [:repo | 
		(repo respondsTo: #directory) and: [
			'*TabletopUI*' match: repo description]] 
	ifFound: [:repo | repo directory containingDirectory] 
	ifNone: [FileDirectory default])