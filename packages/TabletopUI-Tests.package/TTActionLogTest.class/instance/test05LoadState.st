testing
test05LoadState

	self log loadState: self actionLogListInstantiationDict.

	self assert: self log actionLogList asArray = (self actionLogListInstantiationDict at: TTGameStateKeys keyActionLogList) asArray