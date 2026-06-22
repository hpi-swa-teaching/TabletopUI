layout containers
layoutWallet

	^ self layoutContainerWithForm: self walletForm
		extent: self walletExtent
		calling: [:container | self buildWalletIn: container]