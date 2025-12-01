local value = 50
local result = 0

for line in io.lines() do
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
end
print(result)
