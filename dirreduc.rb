def dirReduc(arr)
	i= 0
	while i < arr.length
		case arr[i]
		when "NORTH"
			if arr[i+1] == "SOUTH"
				arr.delete(arr[i])
				arr.delete(arr[i+1])
				i += 1
			else
				i += 1
			end
		when "SOUTH"
			if arr[i+1] == "NORTH"
				arr.delete(arr[i])
				arr.delete(arr[i+1])
				i += 1
			else
				i += 1
			end
		when "EAST"
			if arr[i+1] == "WEST"
				arr.delete(arr[i])
				arr.delete(arr[i+1])
				i += 1
			else
				i += 1
			end
		when "WEST"
			if arr[i+1] == "EAST"
				arr.delete(arr[i])
				arr.delete(arr[i+1])
				i += 1
			else
				i += 1
			end
		end
	end
	print arr
end
dirReduc(["NORTH", "WEST", "SOUTH", "EAST", "NORTH", "WEST"])
#dirReduc(["NORTH", "WEST", "SOUTH", "EAST"])
