local value = 50
local result = 0

for line in io.lines() do
	local dir = string.sub(line, 1, 1)
	local offset = tonumber(string.sub(line, 2))

	if dir == "R" then
		for _ = 1, offset, 1 do
			value = value + 1
			if value == 100 then
				value = 0
				result = result + 1
			end
		end
	else
		for _ = 1, offset, 1 do
			value = value - 1
			if value == -1 then
				value = 99
			end
			if value == 0 then
				result = result + 1
			end
		end
	end
	print(value)
	--
	-- if dir == "R" then
	-- 	value = value + offset
	-- 	result = result + (value // 100)
	-- else
	-- 	value = value - offset
	-- 	result = result - value // 100
	-- end
	-- value = value % 100
	-- print(value)
end
print(result)
