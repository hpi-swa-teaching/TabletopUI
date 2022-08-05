parsing
parseAction

	| token |
	token := self lexer nextToken.
	
	(token matchesRegex: self initiativeRegex) ifTrue: [
		^ TTInitiativeCommand new].
	(token matchesRegex: self fightRegex) ifTrue: [
		^ TTFightCommand new].
	(token matchesRegex: self turnRegex) ifTrue: [
		^ TTTurnCommand new].
	^TTErrorCommand new
	
	