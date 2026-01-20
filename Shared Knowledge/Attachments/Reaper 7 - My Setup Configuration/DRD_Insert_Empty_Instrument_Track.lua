-- Begin the undo block
reaper.Undo_BeginBlock()

-- Store selected tracks in a table
local selectedTracks = {}
local countTracks = reaper.CountSelectedTracks(0)

if countTracks == 0 then
    -- If no track selected, insert a track at the end of the track list
    reaper.InsertTrackAtIndex(reaper.CountTracks(0), true)
    local newTrack = reaper.GetTrack(0, reaper.CountTracks(0) - 1)

    -- Set track attributes
    reaper.SetMediaTrackInfo_Value(newTrack, "I_RECINPUT", 6112) -- Set input: MIDI from all channels
    reaper.SetMediaTrackInfo_Value(newTrack, "I_RECMODE", 7) -- Set mode to "MIDI overdub"
    reaper.SetMediaTrackInfo_Value(newTrack, "I_RECARM", 0) -- Disarm track
    reaper.SetMediaTrackInfo_Value(newTrack, "I_RECMON", 1) -- Turn off input monitoring

    -- Using GetTrackStateChunk we retrieve track info, add our AUTO_RECARM setting and then apply it back
    local ret, chunk = reaper.GetTrackStateChunk(newTrack, "", false)
    chunk = chunk:gsub("\n>", "\nAUTO_RECARM 1\n>") -- Add AUTO_RECARM 1 to the end of the chunk
    reaper.SetTrackStateChunk(newTrack, chunk, false)
else
    for i = 0, countTracks - 1 do
        selectedTracks[i + 1] = reaper.GetSelectedTrack(0, i)
    end

    for i = countTracks - 1, 0, -1 do
        -- Get current track
        local track = selectedTracks[i + 1]

        -- Get current track number (0-based)
        local trackNumber = math.floor(reaper.GetMediaTrackInfo_Value(track, "IP_TRACKNUMBER")) - 1
        local newTrackNumber = trackNumber
        local lastTrackInFolderNumber = nil

        -- If track is a folder, find the end of the folder
        if reaper.GetMediaTrackInfo_Value(track, "I_FOLDERDEPTH") == 1 then
            local currentTrackNumber = trackNumber
            local folderDepth = 1

            -- Find the end of the folder
            while folderDepth > 0 and currentTrackNumber < reaper.CountTracks(0) - 1 do
                currentTrackNumber = currentTrackNumber + 1
                local currentTrack = reaper.GetTrack(0, currentTrackNumber)
                folderDepth = folderDepth + reaper.GetMediaTrackInfo_Value(currentTrack, "I_FOLDERDEPTH")
            end

            if folderDepth >= 0 then
                -- Insert the track
                newTrackNumber = currentTrackNumber
                reaper.InsertTrackAtIndex(newTrackNumber, true)

                -- Store the track number of the last child track in the folder
                lastTrackInFolderNumber = currentTrackNumber + 1
            end
        else
            -- Insert a track at the end of the track list
            reaper.InsertTrackAtIndex(reaper.CountTracks(0), true)
            newTrackNumber = reaper.CountTracks(0) - 1
        end
        
        -- Get the new track
        local newTrack = reaper.GetTrack(0, newTrackNumber)
        
        -- Set track attributes
        reaper.SetMediaTrackInfo_Value(newTrack, "I_RECINPUT", 6112) -- Set input: MIDI from all channels
        reaper.SetMediaTrackInfo_Value(newTrack, "I_RECMODE", 7) -- Set mode to "MIDI overdub"
        reaper.SetMediaTrackInfo_Value(newTrack, "I_RECARM", 0) -- Disarm track
        reaper.SetMediaTrackInfo_Value(newTrack, "I_RECMON", 1) -- Turn off input monitoring
        
        -- Using GetTrackStateChunk we retrieve track info, add our AUTO_RECARM setting and then apply it back
        local ret, chunk = reaper.GetTrackStateChunk(newTrack, "", false)
        chunk = chunk:gsub("\n>", "\nAUTO_RECARM 1\n>") -- Add AUTO_RECARM 1 to the end of the chunk
        reaper.SetTrackStateChunk(newTrack, chunk, false)

        -- If there was a last child track in the folder, move that track up
        if lastTrackInFolderNumber then
            reaper.SetOnlyTrackSelected(reaper.GetTrack(0, lastTrackInFolderNumber))
            reaper.ReorderSelectedTracks(lastTrackInFolderNumber - 1, 0)
        end

        
    end

    -- Unselect all tracks
    reaper.Main_OnCommand(40297, 0)

    -- Reselect originally selected tracks
    for i = 1, #selectedTracks do
        reaper.SetTrackSelected(selectedTracks[i], true)
    end
end

-- Close the undo block
reaper.Undo_EndBlock("Create new track for each selected track", -1)

-- Redraw the track list
reaper.TrackList_AdjustWindows(false)

-- Update the arrangement to reflect changes
reaper.UpdateArrange()

