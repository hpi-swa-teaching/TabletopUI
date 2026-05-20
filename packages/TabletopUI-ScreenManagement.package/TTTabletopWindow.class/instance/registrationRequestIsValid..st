server session management
registrationRequestIsValid: aDict

	| name role connectionDetails |

	name := aDict at: #name ifAbsent: [ ^ false ].
	role := aDict at: #role ifAbsent: [ ^ false ].
	connectionDetails := aDict at: #connectionDetails ifAbsent: [ ^ false ].

	(self connectionRegistry keys includes: name)
		ifTrue: [ ^ false ].

	(self connectionRegistry values
		anySatisfy: [ :entry |
			(entry at: #connectionDetails ifAbsent: [ nil ]) = connectionDetails ])
		ifTrue: [ ^ false ].

	(role = 'gamemaster' and: [
		self connectionRegistry values
			anySatisfy: [ :entry |
				(entry at: #role ifAbsent: [ nil ]) = #gamemaster ] ])
		ifTrue: [ ^ false ].

	^ true