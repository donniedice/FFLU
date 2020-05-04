local a = CreateFrame("Frame")
a:RegisterEvent("PLAYER_LEVEL_UP")
a:SetFrameStrata("BACKGROUND");
a:SetClampedToScreen(true)
a:SetAllPoints(UIParent)
a:Hide();

a:SetScript("OnEvent",
	function(self, event, ...)
		PlaySoundFile("Interface\\Addons\\FFLU\\FFLU.ogg", "Master")
		end)
