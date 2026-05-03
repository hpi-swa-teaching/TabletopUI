accessing
parameters: params
	"We normalize as the access to parameters is case insensitive. --pre"
	parameters := Dictionary newFrom: (params keys collect: [:key |
		key asLowercase -> (params at: key)]).