setup
characterNamed: aName on: aSessionManager

	^ aSessionManager characterAdministration players detect: [:p | p name = aName]