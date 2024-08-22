local frame = CreateFrame("Frame")
local events = {}

-- Handle the NAME_PLATE_UNIT_ADDED event
function events:NAME_PLATE_UNIT_ADDED(unitId)
    local nameplate = C_NamePlate.GetNamePlateForUnit(unitId)
    
    -- Ensure nameplate and UnitFrame are valid and not forbidden
    if not nameplate or nameplate.UnitFrame:IsForbidden() then
        return
    end

    local unitFrame = nameplate.UnitFrame
    unitFrame.BuffFrame:ClearAllPoints()
    unitFrame.BuffFrame:SetAlpha(0)
end

-- Display a message on player login
local function DisplayOnLoginMessage()
    print("[|cffffe568F|r|cffffffffinal|r |cffffe568F|r|cffffffffantasy|r |cffffe568L|r|cffffffffevel|r |cffffe568U|r|cffffffffp!|r] |cffffe568Loaded!|r |cff8080ff(v2.1.3)|r")
end

-- Event handler function
frame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        DisplayOnLoginMessage()
    else
        events[event](self, ...)
    end
end)

-- Register relevant events
frame:RegisterEvent("NAME_PLATE_UNIT_ADDED")
frame:RegisterEvent("PLAYER_LOGIN")

-- Register the event handler
for event in pairs(events) do
    frame:RegisterEvent(event)
end
