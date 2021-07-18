history
lastStoredRun
	^ ((Dictionary new) add: (#duration->0); add: (#errors->((Set new))); add: (#passed->((Set new) add: #test00ChangeName; add: #test01IsValidName; yourself)); add: (#failures->((Set new))); add: (#timeStamp->'8 June 2021 10:56:33.574661 am' asTimeStamp); add: (#durations->((Dictionary new) add: (#test00ChangeName->0); add: (#test01IsValidName->0); yourself)); yourself)