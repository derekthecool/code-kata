local M = {}

M.ceaser_cipher = function(word, shift)
	local output_word = ""
	for letter in string.gmatch(word, ".") do
		local letter_number = string.byte(letter:upper())
		if letter_number + shift > string.byte("Z") then
			letter_number = letter_number - (26 - shift)
		else
			letter_number = letter_number + shift
		end
		output_word = output_word .. letter string.char(letter_number)
	end

	return output_word
end

return M
