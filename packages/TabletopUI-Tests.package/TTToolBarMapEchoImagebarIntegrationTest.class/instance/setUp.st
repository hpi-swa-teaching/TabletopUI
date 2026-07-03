accessing
setUp

	self toolBar: TTToolBar new.
	self mapEcho: TTMapEcho new.
	self imageBar: TTImageBar new.
	self toClientNetworkRelay: TTMockNetworkRelay new.
	self toServerNetworkRelay: TTMockNetworkRelay new.
	self toClientNetworkRelay id: 'mapSelector'.
	self toServerNetworkRelay id: 'mapEcho'.
	self toolBar networkFacade: self toServerNetworkRelay.
	self mapEcho networkFacade: self toClientNetworkRelay.
	self toClientNetworkRelay networkObject: self imageBar.
	self toServerNetworkRelay networkObject: self mapEcho