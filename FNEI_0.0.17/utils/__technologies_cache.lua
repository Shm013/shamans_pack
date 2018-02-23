local FTC = {

  add_val = function(a, b)
    return a + b
  end,

  dev_val = function(a, b)
    out(a)
    out(b)
    return a / b
  end,
}

local T = {}

function T.create()
    -- setmetatable возвращает свой первый параметр в качестве результата
    return setmetatable({}, T)
end

setmetatable(T, {
    __call = function(cls)
        return cls.create()
    end,
})

local a = T()
local b = T()


return FTC