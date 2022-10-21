local genv = getgenv() do
    genv.env = genv
end

genv.import = function(module)
    if not module then
        rconsoleprint('Missing required argument #1 "module"')
        return
    end
    local dir = string.format('https://raw.githubusercontent.com/ou1z/lua-modules/main/modules/%s.luamod', module)
    local res = syn.request({
        Url = dir
    }).Body
    if loadstring(res) then
        loadstring(res)()
    else
        rconsoleprint(string.format("Failed to import module: %s", module))
    end
end

genv.bulk_import = function(...)
    local modules = {...}
    for _, module in pairs(modules) do
        import(module)
    end
end
