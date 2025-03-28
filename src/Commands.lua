RPTT.Commands = {} -- Interface for Global Commands

-- ! SlashCmd Register ! --
RPTT:RegisterChatCommand("rptt", "cmdRoleTimeFunc")
RPTT:RegisterChatCommand("rptt-timer", "cmdRTTimerFunc")

-- ! Command Functions ! --
function RPTT:cmdRoleTimeFunc(input)
    if input == "open" then RPTT.Commands.OpenMenu()
    elseif input == "settings" then RPTT.Commands.OpenMenu()
    else
        print("Following Roleplay TimeTracker Commands are available:")
        print("- |cFFFFD700/rptt open   |r       Opens the Main Window")
        print("- |cFFFFD700/rptt settings   |r   Opens the Settings Window")
        print("- |cFFFFD700/rptt-timer start |r  Starts the Time Tracking")
        print("- |cFFFFD700/rptt-timer stop |r  Stops the Time Tracking")
    end
end

function RPTT:cmdRTTimerFunc(input)
    if input == "start" then
        RPTT.Commands.TimerStart()
    elseif input == "stop" then
        RPTT.Commands.TimerStop()
    end
end

local function onOpenMenu()
    if RPTT_MainWindow:IsShown() then
        RPTT_MainWindow:Hide();
    else
        RPTT_MainWindow:Show();
    end
end
RPTT.Commands.OpenMenu = onOpenMenu

local function onOpenSettingMenu(self, button)
    print("Settings")
end
RPTT.Commands.OpenSettingsMenu = onOpenSettingMenu

local function onMapIconClick(self, button)
    if button == "LeftButton" then
        onOpenMenu()
    elseif button == "RightButton" then
        onOpenSettingMenu()
    end
end
RPTT.Commands.MapIconClick = onMapIconClick

local function onTimerStart()
    print("Start Timer")
end
RPTT.Commands.TimerStart = onTimerStart

local function onTimerStop()
    print("Stop Timer")
end
RPTT.Commands.TimerStop = onTimerStop
