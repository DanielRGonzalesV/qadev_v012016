Before('@positive_test') do |scenario|
puts "This is the #{scenario.name}"
end

Before('@negative_test') do |scenario|
puts "This is the #{scenario.name}"
end

Before('@boundary_test') do |scenario|
puts "This is the #{scenario.name}"
end