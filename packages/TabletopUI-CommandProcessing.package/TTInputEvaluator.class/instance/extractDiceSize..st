dice roll
extractDiceSize: aString

	^ ((aString subStrings: {$d . $+ . $-}) second) asNumber
