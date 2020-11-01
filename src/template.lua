local liluat = require("liluat")

local template = {}

template.folder = ""
template.views = {}

function template.view(name, model)
	local view

	if not template.views[name] then
		local file = io.open(template.folder .. name .. ".html", "rb")
		local contents = file:read("*a")

		local compiled = liluat.compile(contents)
		view = liluat.render(compiled, model)

		file:close()
		template.views[name] = compiled
	else
		view = liluat.render(template.views[name], model)
	end

	return view
end

return template
