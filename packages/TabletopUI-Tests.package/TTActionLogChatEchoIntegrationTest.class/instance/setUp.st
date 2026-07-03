accessing
setUp

	self log: TTActionLog new.
	self chatEcho: ChatEcho new.
	self toClientNetworkRelay: TTMockNetworkRelay new.
	self toServerNetworkRelay: TTMockNetworkRelay new.
	self toClientNetworkRelay id: 'chat'.
	self toServerNetworkRelay id: 'chat'.
	self log networkmanager: self toServerNetworkRelay.
	self chatEcho networkmanager: self toClientNetworkRelay.
	self toClientNetworkRelay networkObject: self log.
	self toServerNetworkRelay networkObject: self chatEcho