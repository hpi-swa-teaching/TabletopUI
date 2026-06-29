session management
registrationRequestIsValid: aDict

	| name role |

	name := aDict at: 'name' ifAbsent: [ ^ false ].
	role := aDict at: 'role' ifAbsent: [ ^ false ].
	aDict at: 'connectionDetails' ifAbsent: [ ^ false ].

	(self connectionRegistry keys includes: name)
		ifTrue: [ ^ false ].
		
		
	(role = 'gamemaster' and: [
		self connectionRegistry values
			anySatisfy: [ :entry |
				(entry at: #role ifAbsent: [ nil ]) = #gamemaster ] ])
		ifTrue: [ ^ false ].

	^ true