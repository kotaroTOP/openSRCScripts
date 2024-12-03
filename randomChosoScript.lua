args = { [1] = "Choso" }
local table1 = {}
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
uis.InputStarted:Connect(function() end)
startLoop("PiercingBlood", "PiercingBloodService", table1)
