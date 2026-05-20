initialize-release
notifyObservers

	self observers do: [:observer | observer notifyRulerToolClosed]