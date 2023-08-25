---
---@meta 
---hiiii :3

local Application = require('lapis.application')
local app_cache = {}

---Serves the Lapis App
---@param app_cls any
local function serve(app_cls)
end

return {
  serve = serve,
  Application = Application,
  app_cache = app_cache
}
