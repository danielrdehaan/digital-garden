-- Reaper Lua script to set MIDI channel of selected MIDI events

function Main()
    local retval, user_input = reaper.GetUserInputs("Set MIDI channel", 1, "Enter MIDI channel number (1-16):", "")

    if not retval then return end    

    local channel = tonumber(user_input)

    if channel == nil or channel < 1 or channel > 16 then
      reaper.ShowMessageBox("Please enter a valid number between 1 and 16", "Invalid input", 0)
      return
    end
    
    channel = channel - 1 -- Adjust for 0 based MIDI Channel
    
    if reaper.CountSelectedMediaItems(0) == 0 then
      reaper.ShowMessageBox("Please select a MIDI item first.", "No MIDI item selected", 0)
      return
    end
    
    for i = 0, reaper.CountSelectedMediaItems(0) - 1 do
      local item = reaper.GetSelectedMediaItem(0, i)
      local take = reaper.GetActiveTake(item)
      
      if reaper.TakeIsMIDI(take) then
        local retval, notes, ccs, sysex = reaper.MIDI_CountEvts(take)
        for ni = 0, notes - 1 do
           retval, selected, muted, startppqpos, endppqpos, chan, pitch, vel = reaper.MIDI_GetNote(take, ni)
      
           if selected then
             reaper.MIDI_SetNote(take, ni, selected, muted, startppqpos, endppqpos, channel, pitch, vel, false)
           end
        end
        reaper.MIDI_Sort(take)
      end
    end
end

reaper.Undo_BeginBlock()
Main()
reaper.Undo_EndBlock("Set MIDI Channel", -1)

