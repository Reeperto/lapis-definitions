---@meta

---@alias HttpVerb
---| "GET"
---| "POST"
---| "DELETE"
---| "PUT"

--Returns a new function that dispatches to the correct function in the table based on the verb of the request.
--See [Handling HTTP verbs](https://leafo.net/lapis/reference/actions.html#handling-http-verbs)
--
--If an action for HEAD does not exist Lapis inserts the following function to render nothing:
--```lua
--function() return { layout = false } end
--```
---@param verbs_to_fn table<HttpVerb, function>
local function respond_to(verbs_to_fn)
end

return {
	Request = Application.Request,
	Application = Application,
	respond_to = respond_to,
	capture_errors = capture_errors,
	capture_errors_json = capture_errors_json,
	json_params = json_params,
	assert_error = assert_error,
	yield_error = yield_error
}
