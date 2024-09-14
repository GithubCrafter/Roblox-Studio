local Players = game:GetService("Players")
local Client = Players.LocalPlayer
local ClientMouse = Client:GetMouse()
local Click_Count = 0
ClientMouse.Button1Down:Connect(function()
	Click_Count += 1
end)

while task.wait(1) do
	if Click_Count >= 20 then
		Client:Kick("Auto Clicking detected.")
	end
	Click_Count = 0
end

-- put this in a local script in StarterPlayerScripts
