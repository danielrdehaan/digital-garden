-- Map for commands-CC lane values to their action IDs
local actionMap = {
    [0] = 40238, [1] = 40239, [2] = 40240, [3] = 40241, [4] = 40242, [5] = 40243, [6] = 40244,
    [7] = 40245, [8] = 40246, [9] = 40247, [10] = 40248, [11] = 40249, [12] = 40250, [13] = 40251,
    [14] = 40252, [15] = 40253, [16] = 40254, [17] = 40255, [18] = 40256, [19] = 40257, [20] = 40258,
    [21] = 40259, [22] = 40260, [23] = 40261, [24] = 40262, [25] = 40263, [26] = 40264, [27] = 40265,
    [28] = 40266, [29] = 40267, [30] = 40268, [31] = 40269, [32] = 40270, [33] = 40271, [34] = 40272,
    [35] = 40273, [36] = 40274, [37] = 40275, [38] = 40276, [39] = 40277, [40] = 40278, [41] = 40279,
    [42] = 40280, [43] = 40281, [44] = 40282, [45] = 40283, [46] = 40284, [47] = 40285, [48] = 40286,
    [49] = 40287, [50] = 40288, [51] = 40289, [52] = 40290, [53] = 40291, [54] = 40292, [55] = 40293,
    [56] = 40294, [57] = 40295, [58] = 40296, [59] = 40297, [60] = 40298, [61] = 40299, [62] = 40300,
    [63] = 40301, [64] = 40302, [65] = 40303, [66] = 40304, [67] = 40305, [68] = 40306, [69] = 40307,
    [70] = 40308, [71] = 40309, [72] = 40310, [73] = 40311, [74] = 40312, [75] = 40313, [77] = 40315,
    [78] = 40316, [79] = 40317, [80] = 40318, [81] = 40319, [82] = 40320, [83] = 40321, [84] = 40322,
    [85] = 40323, [86] = 40324, [87] = 40325, [88] = 40326, [89] = 40327, [90] = 40328, [91] = 40329,
    [92] = 40330, [93] = 40331, [94] = 40332, [95] = 40333, [96] = 40334, [97] = 40335, [98] = 40336,
    [99] = 40337, [100] = 40338, [101] = 40339, [102] = 40340, [103] = 40341, [104] = 40342, [105] = 40343,
    [106] = 40344, [107] = 40345, [108] = 40346, [109] = 40347, [110] = 40348, [111] = 40349, [112] = 40350,
    [113] = 40351, [114] = 40352, [115] = 40353, [116] = 40354, [117] = 40355, [118] = 40356, [119] = 40357,
    ["mod"] = 40239,
    ["modulation"] = 40239,
    ["expression"] = 40249,
    ["x"] = 40249,
    ["volume"] = 40245,
    ["vol"] = 40245,
    ["sustain"] = 40302,
    ["hold pedal"] = 40302,
    ["hold"] = 40302,
    ["sustain pedal"] = 40302,
    ["velocity"] = 40237,
    ["vel"] = 40237,
    ["v"] = 40237,
    ["pitch"] = 40366,
    ["pitchbend"] = 40366,
    ["program"] = 40367,
    ["program change"] = 40367,
    ["channel pressure"] = 40368,
    ["aftertouch"] = 40368,
    ["bank/program select"] = 40369,
    ["text events"] = 40370,
    ["sysex"] = 40371
}

-- Prompting the user for the value
retval, user_input = reaper.GetUserInputs("CC Lane Control", 1, "CC number/name/show or hide:", "")

if not retval then return end -- User cancelled the dialog

local cc_value = user_input:lower()

if not tonumber(cc_value) then -- if the user input is not a number
    if cc_value == "pitch"
        or cc_value == "pitchbend"
        or cc_value == "velocity"
        or cc_value == "vel"
        or cc_value == "v"
        or cc_value == "program"
        or cc_value == "program change"
        or cc_value == "channel pressure"
        or cc_value == "aftertouch"
        or cc_value == "bank/program select"
        or cc_value == "text events"
        or cc_value == "sysex"
        or cc_value == "mod"
        or cc_value == "modulation"
        or cc_value == "expression"
        or cc_value == "x"
        or cc_value == "volume"
        or cc_value == "vol"
        or cc_value == "sustain"
        or cc_value == "hold pedal"
        or cc_value == "hold"
        or cc_value == "sustain pedal"
      then
        -- these are special keywords and are allowed
    else
        -- Hide CC Lanes
        if cc_value == "h" or cc_value == "hide" or cc_value == "hide all"
          then
            local hwnd = reaper.MIDIEditor_GetActive()
            if hwnd then
              -- Run the action
              sws_hideAllCcLanesID = reaper.NamedCommandLookup("_S&M_HIDECCLANES_ME")
              reaper.MIDIEditor_OnCommand(hwnd, sws_hideAllCcLanesID)
            end
        end
        
        -- Show Only Used CC Lanes
        if cc_value == "s" or cc_value == "show" or cc_value == "show used"
          then
            local hwnd = reaper.MIDIEditor_GetActive()
            if hwnd then
              -- Run the action
              sws_showUsedCcLanesID = reaper.NamedCommandLookup("_FNG_ME_SHOW_USED_CC_LANES")
              reaper.MIDIEditor_OnCommand(hwnd, sws_showUsedCcLanesID)
              sws_setCcLaneHeightID = reaper.NamedCommandLookup("_BR_ME_SET_CC_LANES_HEIGHT_150")
              reaper.MIDIEditor_OnCommand(hwnd, sws_setCcLaneHeightID)
            end
        end
        -- show error message for invalid keyword
        -- reaper.ShowMessageBox("Invalid input! Please enter a number from 0-119, 'Pitch', 'Velocity', 'Program' or 'ChanPressure'", "Error", 0)
        return
    end
end

-- Extract the action id
local action_id = actionMap[tonumber(cc_value)] or actionMap[cc_value] 

if action_id then 
    -- If there is a MIDI editor open
    local hwnd = reaper.MIDIEditor_GetActive()
    if hwnd then
        -- Run the action
        sws_topCcLaneID = reaper.NamedCommandLookup("_FNG_ME_TOP_CC_LANE")
        sws_setCcLaneHeightID = reaper.NamedCommandLookup("_BR_ME_SET_CC_LANES_HEIGHT_200")
        reaper.MIDIEditor_OnCommand(hwnd, sws_topCcLaneID)
        reaper.MIDIEditor_OnCommand(hwnd, sws_setCcLaneHeightID)
        reaper.MIDIEditor_OnCommand(hwnd, action_id)
    else
        reaper.ShowMessageBox("No MIDI editor found. Please open a MIDI editor and try again.", "Error", 0)
    end
else
    -- reaper.ShowMessageBox("Invalid command! Please enter a valid CC number or one of the listed keywords", "Error", 0)
end

