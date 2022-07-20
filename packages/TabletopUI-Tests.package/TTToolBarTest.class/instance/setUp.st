running
setUp

	self toolBar: TTToolBar new.
	self subWindowManager: TTSubWindowManager new.
	self toolBar subWindowManager: self subWindowManager.
	self toolBar inputField: TTMockInputField new.
	self toolBar map: TTMap new.
	self toolBar map subWindowManager: self subWindowManager