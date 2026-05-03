lookups
localHostName
	"Return the local name of this host."
	"NetNameResolver localHostName"

	| host |
	host := String new: NetNameResolver primHostNameSize.
	NetNameResolver primHostNameResult: host.
	^host