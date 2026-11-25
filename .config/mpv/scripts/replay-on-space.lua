mp.add_forced_key_binding("SPACE", "replay-if-eof", function()
    if mp.get_property_native("eof-reached") then
        mp.commandv("seek", "0", "absolute")
        mp.set_property_bool("pause", false)
    else
        mp.command("cycle pause")
    end
end, {repeatable = false})
