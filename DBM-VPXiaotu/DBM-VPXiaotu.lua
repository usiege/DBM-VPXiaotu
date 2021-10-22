local XiaoTu = CreateFrame("Frame")
XiaoTu:RegisterEvent("PLAYER_ENTERING_WORLD")
local XiaoTuEvent = function()
    if not DBM_AllSavedOptions["Default"] then 
        DBM_AllSavedOptions["Default"] = {} 
    end
    DBM_AllSavedOptions["Default"]["ChosenVoicePack"] = "Xiaotu"
end
XiaoTu:SetScript("OnEvent", XiaoTuEvent)