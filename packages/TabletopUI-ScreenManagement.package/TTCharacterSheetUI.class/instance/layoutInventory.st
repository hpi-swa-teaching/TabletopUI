layout containers
layoutInventory

	^ self layoutContainerWithForm: self inventoryForm
		extent: self inventoryExtent
		calling: [:container | self buildInventoryIn: container]