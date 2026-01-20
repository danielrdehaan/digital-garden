-- Define a function to convert fraction to division
local function FractionToDivision(fraction)
    local numerator, denominator = fraction:match("^(%d+)/(%d+)$")
    return tonumber(numerator), tonumber(denominator)
end

-- Prompt the user for a fraction
local retval, user_input = reaper.GetUserInputs("Set MIDI Grid", 1, "Enter Fraction (e.g. 1/16, 1/4):", "")

if retval then
    local numerator, denominator = FractionToDivision(user_input)

    if numerator and denominator then
        local grid_division = numerator / denominator

        -- Set the grid division for the MIDI editor
        reaper.SetMIDIEditorGrid(0, grid_division)
    else
        -- If the input wasn't in the correct format, notify the user
        reaper.ShowMessageBox("Invalid fraction input. Please use format 1/16, 1/4, etc.", "Error", 0)
    end
end

