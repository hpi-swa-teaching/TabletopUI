dice roll
extractDiceSize: aString

	^ ((aString subStrings: {$d . $+ . $-}) at: 2) asNumber
