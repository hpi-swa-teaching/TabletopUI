as yet unclassified
baseDirectory

	^ (MCRepositoryGroup default repositories
            detect: [:repo | (repo isKindOf: MCFetchGithubRepository) and: 
            [repo projectPath = 'hpi-swa-teaching/TabletopUI']]) directory containingDirectory