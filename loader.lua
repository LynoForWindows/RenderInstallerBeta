-- i belive i didn't skidded but i am the worst luau developer ever.

version = "1.0"
installed = "default"

print("✅Version"..version.." | Newest Version !")
--Install

--pasted from vape (sorry)
warningNotification = function(title, text, delay)
	local suc, res = pcall(function()
		local frame = GuiLibrary.CreateNotification(title, text, delay, 'assets/WarningNotification.png')
		frame.Frame.Frame.ImageColor3 = Color3.fromRGB(236, 129, 44)
		return frame
	end)
	return (suc and res)
end
local installedIndex = false -- Initial value

local function createGUI()
    local gui = Instance.new("ScreenGui")
    gui.Parent = game.Players.LocalPlayer.PlayerGui
    
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 200, 0, 100)
    frame.Position = UDim2.new(0.5, -100, 0.5, -50)
    frame.BackgroundColor3 = Color3.new(1, 1, 1)
    frame.BorderSizePixel = 0
    frame.Parent = gui
    
    local textBox = Instance.new("TextBox")
    textBox.Size = UDim2.new(0, 180, 0, 30)
    textBox.Position = UDim2.new(0.5, -90, 0.3, -15)
    textBox.Font = Enum.Font.SourceSans
    textBox.TextSize = 14
    textBox.TextColor3 = Color3.new(0, 0, 0)
    textBox.PlaceholderText = "Enter 'true' or 'false'"
    textBox.Parent = frame
    
    textBox.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            local input = textBox.Text:lower()
            
            if input == "true" then
                installed = true
            elseif input == "false" then
                installed = false
            else
                gui:Destroy() 
                return
            end
            
            gui:Destroy()
        end
    end)
end

createGUI()
if installed = false then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SystemXVoid/Render/source/Libraries/installer.lua'))()('UkVOREVSLWFmYjdjYjMzLWNjMTgtNGI5Zi04OGU4LTcwMTYyZTg3ZGQ2Mw==')
    warningNotification("Installing","please wait",5)
elseif installed = true then
    loadfile("vape/NewMainScript.lua")()
    warningNotification("Lyno","Successfully Installed Render !",5)
end


