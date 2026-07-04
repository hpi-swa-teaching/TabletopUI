accessing
setUp

	self log: TTActionLog new.
	self chatEcho: TTChatEcho new.
	self toClientNetworkRelay: TTMockNetworkRelay new.
	self toServerNetworkRelay: TTMockNetworkRelay new.
	self toClientNetworkRelay id: 'actionLog'.
	self toServerNetworkRelay id: 'chat'.
	self log networkFacade: self toServerNetworkRelay.
	self chatEcho networkFacade: self toClientNetworkRelay.
	self toClientNetworkRelay networkObject: self log.
	self toServerNetworkRelay networkObject: self chatEcho