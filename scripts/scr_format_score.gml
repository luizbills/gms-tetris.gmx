str = ""

str_score = string(global.score)

len = string_length(str_score)

nzeros = 7 - len

if (nzeros > 0) repeat(nzeros) str += "0"

str += str_score

return str
