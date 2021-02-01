family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

immediate_fam = family.select do |title, names|
  title == :sisters || title == :brothers
end

fam_arr = immediate_fam.values.flatten
p fam_arr