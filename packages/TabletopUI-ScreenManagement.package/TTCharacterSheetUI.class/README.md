A TTCharacterSheetUI is the view component for the character sheet.

Instance Variables
	closeButton:		<Morph>
	currentPage:		<Number>
	deathSaveFailureMorph:		<Morph>
	deathSaveSuccessMorph:		<Morph>
	label:		<Object>
	model:		<Object>
	name:		<Object>
	nextPageButton:		<Morph>
	sheet:		<Morph>

closeButton
	- button for closing the character sheet

currentPage
	-  index of current page

deathSaveFailureMorph
	- explicit display for death save failures

deathSaveSuccessMorph
	- explicit display for death save successes

label
	- needed for the Toolbuilder

model
	- model component, instance of TTCharacterSheetData

name
	- name of the character
	
nextPageButton
	- button for clicking to next page

sheet
	- the morph of the character sheet
