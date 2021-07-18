history
lastStoredRun
	^ ((Dictionary new) add: (#duration->0); add: (#errors->((Set new))); add: (#passed->((Set new) add: #test01RollMultipleTimes; add: #test01Roll; yourself)); add: (#failures->((Set new))); add: (#timeStamp->'8 June 2021 10:56:33.574661 am' asTimeStamp); add: (#durations->((Dictionary new) add: (#test01Roll->0); add: (#test01RollMultipleTimes->0); yourself)); yourself)