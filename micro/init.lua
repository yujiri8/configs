local buffer = import("micro/buffer")

function preAutocomplete(bp)
    if bp.Buf.Type ~= buffer.BTInfo then
        return false
    end
    return true
end
