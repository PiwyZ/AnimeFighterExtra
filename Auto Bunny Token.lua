-- [ Before u use this #Read First This not to to mon but just pos Require DPC 800T and Auto Attack gamepass ]
-- [ Before u use this #Read First This not to to mon but just pos Require DPC 800T and Auto Attack gamepass ]
-- [ Before u use this #Read First This not to to mon but just pos Require DPC 800T and Auto Attack gamepass ]
--------------------------------------------------------------------------------------
-- Q = Start
-- E = Stop
local cfFrames = {
    CFrame.new(7962, -182, 15626),
    CFrame.new(8208, -182, 15608),
    CFrame.new(8323, -182, 15786),
    CFrame.new(8128, -182, 15953),
    CFrame.new(8091, -181, 15779),
    CFrame.new(7942, -181, 15871),
}

local userInputService = game:GetService("UserInputService")
local startKey = Enum.KeyCode.Q
local stopKey = Enum.KeyCode.E

local loopRunning = false

userInputService.InputBegan:Connect(function(input)
    if input.KeyCode == startKey then
        if not loopRunning then
            loopRunning = true
    
            while loopRunning do
                for _, cfFrame in ipairs(cfFrames) do
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = cfFrame
                    wait(4)
                    if not loopRunning then
                        break
                    end
                end
            end
        end
    elseif input.KeyCode == stopKey then
        loopRunning = false
    end
end)
