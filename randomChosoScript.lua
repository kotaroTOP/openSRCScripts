local args1 = { [1] = "Choso" }
local table1 = {}
local succes, result pcall(function() 
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local args = {
    [1] = "SetMoveset",
    [2] = "TheRandomgojo"
}
    end)

game:GetService("ReplicatedStorage").Remotes.Comunicator.Set:FireServer(unpack(args))
game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("JoinService"):WaitForChild("RE"):WaitForChild("Change"):FireServer(unpack(args))
local function startLoop(skillName, serviceName, scriptTable, extraArgs)
    spawn(function()
      while scriptTable[skillName] do
          local args = { [1] = false }
          if extraArgs then
              args = extraArgs
          end
          game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild(serviceName):WaitForChild("RE"):WaitForChild("Activated"):FireServer(unpack(args))
          wait(0.1)
    end)
end
local function stopLoop(skillName, scriptTable)
    scriptTable[skillName] = nil
end
uis.InputStarted:Connect(function(gpe, Key) 
    if gpe then end
    if Key.KeyCode == Enum.KeyCode.X then
        if isLoop1 == false then
            isLoop1 = true
            startLoop("PiercingBlood", "PiercingBloodService", table1)
        else
            isLoop1 = false
            stopLoop("PiercingBlood", table1)
        end
    end
end)
