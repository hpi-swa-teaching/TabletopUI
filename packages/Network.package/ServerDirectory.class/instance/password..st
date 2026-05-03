accessing
password: pp

	passwordHolder := ServerPassword new.
	pp isString 
		ifTrue: [passwordHolder cache: pp. ^ self].
	pp isInteger 
		ifTrue: [passwordHolder sequence: pp]
		ifFalse: [passwordHolder := pp].