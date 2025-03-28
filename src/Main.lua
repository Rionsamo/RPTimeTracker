-- Test

RPTTLDB = LibStub("LibDataBroker-1.1"):NewDataObject("RPT", {
    type = "launcher",
    text = "RP TimeTracker",
    icon = "Interface\\Icons\\ability_bossmagistrix_timewarp1",
    OnClick = function(self, button) RPTT.Commands.MapIconClick(self, button) end,
    OnTooltipShow = function(tooltip)
        tooltip:AddDoubleLine("|cFFEE82EERPTimeTracker", "|cFF00FF00v"..RPTT.Globals.VersionStr)
        tooltip:AddLine("|cFF00FF00Left-Click |rto open the Main Menu")
        tooltip:AddLine("|cFF00FF00Right-Click |rto open the Settings Menu")
    end,
})

local icon = LibStub("LibDBIcon-1.0")

function RPTT:OnInitialize()
    self.DB = LibStub("AceDB-3.0"):New("RPTT_DB", {
        profile = {
            minimap = {
                hide = false
            },
            dialog = {
                checked = true
            }
        }
    })


    icon:Register("RPTimeTracker", RPTTLDB,  self.DB.profile.minimap)
    local versionStr = "|cFF00FF00v"..RPTT.Globals.VersionStr;
    print("|cFFEE82EERPTT: " .. versionStr .. " |cFFFFFFFFLoaded.")
end