local file_name = "./day1/part1/input.txt"

local function file_exists(file)
	local f = io.open(file, "rb")
	if f then
		f:close()
	end
	return f ~= nil
end

if file_exists(file_name) then
	io.input(file_name)
else
	print("File '" .. file_name .. "' not foud")
end

local result = 0
local value = 50
local line = io.read("*line")

while line do
	local dir = string.sub(line, 1, 1)
	local offset = tonumber(string.sub(line, 2))
	if dir == "R" then
		value = value + offset
	else
		value = value - offset
	end

	if value % 100 == 0 then
		result = result + 1
	end

	line = io.read("*line")
end
print(result)
