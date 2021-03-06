package = "kolba"
version = "0.1.0-0"
source = {
	url = "..."
}

description = {
   summary = "A micro web framework for Lua",
   detailed = [[
      'kolba' is russian for "flask".

		kolba is a micro web framework designed with safety and security in mind.
		Our goal is to provide a framework that is easy to adopt, lightweight,
		secure and beneficial to the Lua communty. We want developers to choose
		kolba over other frameworks such as Flask or Laravel. To do this we will
		just have to be better, since we've joined the game so late.

		Your path from here is simple.
			1. Learn kolba
			2. Use kolba
			3. Advance and Advocate
   ]],
   homepage = "http://github.com/jessehorne/kolba",
   license = "MIT"
}
dependencies = {
   "lua >= 5.2, < 5.4",
	"http >= 0.2",
	"liluat",
	"mimetypes"
}
build = {
   type = "builtin",
	modules = {
		kolba = "src/kolba.lua",
		["kolba.server"] = "src/server.lua",
		["kolba.json"] = "src/json.lua",
		["kolba.template"] = "src/template.lua",
		["kolba.route"] = "src/route.lua",
		["kolba.browze"] = "src/browze.lua",
		["kolba.context"] = "src/context.lua",
		["util.json"] = "util/json.lua"
	}
}
