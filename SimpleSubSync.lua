--[[
    This script allows users to synchronize one subtitle track to another.
]]--

local mp = require('mp')

function sync_sub()
    if not mp.get_property_native("secondary-sid") then
        mp.osd_message("No referance/secondary sub selected", 1)
        return
    end

    if not mp.get_property_native("sid") then
        mp.osd_message("No main sub selected", 1)
        return
    end

    local sub_start = mp.get_property_number("sub-start")
    local sec_sub_start = mp.get_property_number("secondary-sub-start")

    if sub_start == nil then
        mp.osd_message("Main subtitle: No sub", 1)
    elseif sec_sub_start == nil then
        mp.osd_message("Ref subtitle: No sub", 1)
    else
        mp.set_property("secondary-sid", "no")
        mp.set_property("sub-delay", sec_sub_start - sub_start)
        mp.osd_message("Sub synchronized", 1)
    end
end

function set_ref_sub()
    if mp.get_property_native("secondary-sid") then
        mp.set_property("secondary-sid", "no")
    else
        local current_sid = mp.get_property("sid")
        if current_sid then
            mp.set_property("sid", "no")
            mp.set_property("secondary-sid", current_sid)
        else
            mp.osd_message("No sub selected", 1)
        end
    end
end

------------------------------------------------------------
-- main
mp.add_key_binding("Ctrl+Alt+s", "subsync", sync_sub)
mp.add_key_binding("Ctrl+Alt+r", "subref", set_ref_sub)
