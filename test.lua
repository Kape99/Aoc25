local function file_exists(file)
	local f = io.open(file, "rb")
	if f then
		f:close()
	end
	return f ~= nil
end

if file_exists("test2.lua") then
	print("exist")
else
	print("not exist")
end
