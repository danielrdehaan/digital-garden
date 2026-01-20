-- Prompt the user for a track index
retval, user_input = reaper.GetUserInputs("Select Track", 1, "Enter track index:", "")

if retval then
    -- Convert the user's input to an integer
    track_index = tonumber(user_input)

    -- Decrement the track_index because track indices start at 0 in Reaper
    track_index = track_index - 1

    -- Get the track with the user's specified index
    track = reaper.GetTrack(0, track_index)

    if track then
        -- Unselect all tracks
        reaper.Main_OnCommand(40297, 0) -- Track: Unselect all tracks

        -- Select the specific track
        reaper.SetTrackSelected(track, true) 

        -- Update the Reaper UI
        reaper.TrackList_AdjustWindows(false)
        reaper.UpdateArrange()
    else
        -- If no valid track is returned, notify the user
        reaper.ShowMessageBox("Invalid track index.", "Error", 0)
    end
end


