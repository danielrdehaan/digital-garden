-- Get the reference to the currently selected track
local track = reaper.GetSelectedTrack(0, 0)

-- Check if there's a selected track
if track ~= nil then
    -- Get the track name
    _, trackName = reaper.GetSetMediaTrackInfo_String(track, "P_NAME", "", false)

    -- Function to split the string by a given separator
    function split(s, sep)
        local fields = {}
        local pattern = string.format("([^%s]+)", sep)
        string.gsub(s, pattern, function(c) fields[#fields+1] = c:match("^%s*(.-)%s*$") end) -- Trim spaces
        return fields
    end

    -- Split the track name by " - "
    parts = split(trackName, "-")

    -- Reverse the order of parts
    for i=1, #parts/2 do
        parts[i], parts[#parts - i + 1] = parts[#parts - i + 1], parts[i]
    end

    -- Join the parts together
    reversedTrackName = table.concat(parts, " - ")

    -- Copy the reversed track name to the clipboard
    reaper.CF_SetClipboard(reversedTrackName)

    -- Trigger command 40392
    reaper.Main_OnCommand(40392, 0)
end

