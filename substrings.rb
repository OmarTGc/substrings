def substrings(string, dictionary)
	frequencies = Hash.new(0)
	letters = string.downcase.split("")
	letters.map do |i|
		if dictionary.include? i
			frequencies[i] += 1
		end
	end


	words = string.downcase.split(" ")
	words.map do |i|
		j = 0
		k = -2
		l = 1
		i.length.times do
			if dictionary.include? i[j..-1] and i[j..-1].length != 1
				frequencies[i[j..-1]] += 1
			end
			if dictionary.include? i[0..k] and i[0..k].length != 1
				frequencies[i[0..k]] += 1
			end
			if dictionary.include? i[l..k] and i[l..k].length != 1
				frequencies[i[l..k]] += 1
			end
			j += 1
			k -= 1
			l += 1
		end
	end
	frequencies
end
