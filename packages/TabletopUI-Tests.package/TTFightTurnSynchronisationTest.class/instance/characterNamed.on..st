setup
characterNamed: aName on: aSessionManager

	^ aSessionManager window characterAdministration players detect: [:p | p name = aName]