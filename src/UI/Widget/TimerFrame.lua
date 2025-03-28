

-- ! Globals and Mixin ! --
local c_TimeFrameBDColor = {
    r = 0.3,
    g = 0.3,
    b = 0.3
}

local c_TimeFrameBackdrop = {
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Background", 
    edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Border", 
    tile = true, 
    tileSize = 32, 
    edgeSize = 32, 
    insets = { 
        left = 11, 
        right = 12, 
        top = 12, bottom
        = 11 
    } 
} 

TimeFrameMixin = {}

function TimeFrameMixin:OnTimerLoad()
    self:SetBackdrop(c_TimeFrameBackdrop);
    self:SetBackdropColor(c_TimeFrameBDColor.r, c_TimeFrameBDColor.g, c_TimeFrameBDColor.b)
end

TimerWidgetMixin = {}

function TimerWidgetMixin:StartTimer()
end

