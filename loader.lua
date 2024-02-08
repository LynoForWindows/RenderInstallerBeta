-- i belive i didn't skidded but i am the worst luau developer ever.

version = "1.0"
installed = false

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

if installed = false then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SystemXVoid/Render/source/Libraries/installer.lua'))()('UkVOREVSLWFmYjdjYjMzLWNjMTgtNGI5Zi04OGU4LTcwMTYyZTg3ZGQ2Mw==')
    warningNotification("Installing","please wait",5)
elseif installed = true then
    loadfile("vape/NewMainScript.lua")()
    warningNotification("Lyno","Successfully Installed Render !",5)
end


