require('utils/class')

OverlayFrameCount = class(function(overlayFrameCount, overlay)
    overlayFrameCount.overlay = overlay
end)

function OverlayFrameCount:display(fc)
    self.overlay:getMonitor().drawText(5, 75, fc, 'white', 'black', 30)
end