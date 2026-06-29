initialization
notifyObservers

	self observers do: [:observer | observer notifyRulerToolClosed]