-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Sebastian N
-- Created on: February 27
--
-- 
-- This program calculates the cost of a pizza
-----------------------------------------------------------------------------------------

-- Heading and Background
display.setDefault('background', 0.6, 0, 0)
local myTitle = display.newText('Welcome to ICS20 Pizza\nWhat size of pizza would you like?\n(Inches)', 1024, 300, native.SystemFont, 100)

-- diameter
local diameterTextField = native.newTextField(display.contentCenterX, display.contentCenterY - 200, 450, 120)
diameterTextField.id = 'diameter text'
local unitsMeasure = display.newText('Inch', 1365, 570, native.SystemFont, 120)

-- Button
local myButton = display.newImageRect('Assets/Sprites/Pizza-icon.png', 200, 200 )
myButton.x = 1650
myButton.y = 570
myButton.id = 'initiator'

-- Function 
local function theCosts(event)
	-- Variables
	local subtotal
	local HST
	local Total
	-- Math
	subtotal = 0.75+1.00+(tonumber(diameterTextField.text))
	HST = subtotal * 0.13
	Total = subtotal + HST
	-- Display
	local mySubtotal = display.newText('Subtotal: $'..subtotal, 500, 900, native.SystemFont, 100)
	local myHST = display.newText('Tax: $'..HST, 1500, 900, native.SystemFont, 100)
	local myTotal = display.newText('Total: $'..Total, display.contentCenterX, 1200, native.SystemFont, 100)

end

-- Event listener
myButton: addEventListener('touch', theCosts)