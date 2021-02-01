words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

# split_sorted = {}

# words.each_with_index do |word, index| 
#   split_word = word.split('')
#   split_word_sorted = split_word.sort
#   split_sorted[index] = split_word_sorted
# end 

# split_sorted.each do |index2, arr|
#   array = []
#   split_sorted.each do |inside_ind, inside_arr|
#     if split_sorted[index2] == split_sorted[inside_ind]
#       array.push(words[index])
#     end
#   end
#   p arr
# end

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |value|
  p value
end