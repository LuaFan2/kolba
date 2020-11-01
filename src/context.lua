local context = {}

function context.new(headers)
	return {
		code = 200,
		mime = "text/plain",
		body = "",

		headers = headers,
		cookies = {
			get = function()
				local cookies = {}
				
				for header, cookie in headers:each() do
					if header == "cookie" then 
						table.insert(cookies, kolba.cookie.parse(cookie))
					end
				end

				return cookies
			end,
			
			set = function(key, value)
				headers:append("Set-Cookie", key .. "=" .. value)
			end
		}
	}
end

return context