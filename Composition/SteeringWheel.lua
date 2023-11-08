local module = {}
module.__index = module

module.new = function()
    local self = setmetatable({}, module)
    self.Wheels
    return self
end

function module:Steer(dir)
    for _, wheel in ipairs(self.Wheels) do
        if wheel.IsSteering then
            wheel:Steer(dir)
        end
    end
end

return module.new