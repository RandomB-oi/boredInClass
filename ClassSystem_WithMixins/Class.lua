return function()
    local class = {}
    class.__index = class
    
    class._new = function(args, mixins)
        local self = setmetatable({}, module)
        self._mixins = mixins
        self.args  = args

        self:CallMixin("new", args)

        return self
    end

    function class:CallMixin(name, ...)
        local mixin = self._mixins[name]
        if mixin then
            mixin(...)
        end
    end

    return class
end