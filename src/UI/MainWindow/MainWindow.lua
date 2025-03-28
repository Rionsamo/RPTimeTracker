MainWindowTimerHeaderBackdrop = {
	bgFile = "Interface/Tooltips/UI-Tooltip-Background",
	edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
	edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 },
}

function MainWindow_OnLoad()
    RPTT_MainWindow:SetScript("OnDragStart", RPTT_MainWindow.StartMoving)
    RPTT_MainWindow:SetScript("OnDragStop", RPTT_MainWindow.StopMovingOrSizing)
end

function MainWindow_OnEnable()
    local trpText = ""
    if RPTT.Globals.TRPLoaded then
        trpText = "|cFF00FF00Loaded"
    else
        trpText = "|cFFFF0000Not Loaded"
        RPTT_MainWindow.CB:Disable()
        RPTT_MainWindow.LblTRPData:SetFontObject("GameFontDisable")
    end
    RPTT_MainWindow.TRPSTAT:SetText(trpText)
    RPTT_MainWindow.CB:SetChecked(RPTT.DB.profile.dialog.checked)
end

function UseTRPCB_Check()
    RPTT.DB.profile.dialog.checked = not RPTT.DB.profile.dialog.checked
    RPTT_MainWindow.CB:SetChecked(RPTT.DB.profile.dialog.checked)
end

function TimerHeaderOnShow()
    RPTT_MainWindow.Timerpanel:SetBackdrop({bgFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Background", edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Border", tile = true, tileSize = 32, edgeSize = 32, insets = { left = 11, right = 12, top = 12, bottom = 11 } } );

    RPTT_MainWindow.Timerpanel:SetBackdropColor(0.3, 0.3, 0.3)
    --RPTT_MainWindow.TimerHeader:SetBackdropBorderColor(0.5, 0.4, 0.4)
end


