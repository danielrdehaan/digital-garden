-- get number of selected items
count = reaper.CountSelectedMediaItems(0)

-- if there is at least one selected item
if count > 0 then
    -- get the first selected item
    firstItem = reaper.GetSelectedMediaItem(0, 0)

    -- assume its start position is the earliest
    earliest_pos = reaper.GetMediaItemInfo_Value(firstItem, "D_POSITION")

    -- loop over rest of selected items
    for i = 1, count-1 do
        item = reaper.GetSelectedMediaItem(0, i)
        
        -- get position of item
        pos = reaper.GetMediaItemInfo_Value(item, "D_POSITION")

        -- if this item starts earlier, update earliest_pos
        if pos < earliest_pos then
            earliest_pos = pos
        end
    end

    -- set playback cursor to earliest position and start playback
    reaper.SetEditCurPos(earliest_pos, false, false)
    reaper.CSurf_OnPlay()
end

