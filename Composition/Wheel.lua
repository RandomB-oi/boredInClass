local module = {}
module.__index = module

module.new = function(isSteering)
    local self = setmetatable({}, module)
    self.IsSteering = isSteering
    self.Radius = 25
    return self
end

function module:Steer(dir)
    
end

return module.new