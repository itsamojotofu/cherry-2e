# an exmple block
program_languages = ['ruby', 'java', 'python']
puts program_languages.map {|n| n.upcase}

puts '------'

# senior technique
puts program_languages.map(&:upcase)