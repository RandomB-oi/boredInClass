return {
    new = function(class, mixins)
        self.Mixins = mixins or {}
        function class:CallMixin(name, ...)
            if self.mixins[name] then
                self.mixins[name](...)
            end
        end

        class.new = function(...)
            local self = setmetatable({}, class)

            self:CallMixin("new")

            return self
        end

        return self
    end,
}