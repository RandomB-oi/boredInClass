local module = {}
module.__index = module

module.new = function()
    local self = setmetatable({}, module)
    self.SteeringWheel = SteeringWheel.new()
    self.Wheels = {Wheel.new(), Wheel.new(), Wheel.new(true), Wheel.new(true)}
    self.SteeringWheel.Wheels = self.Wheels
    return self
end

function module:Steer(dir)
    
end

return module.new