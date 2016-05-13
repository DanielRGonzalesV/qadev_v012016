Before('@scenariof1s1') do |scenario|
puts "This is the #{scenario.name} of Feature 1"
end

Before('@scenariof2s2') do |scenario|
puts "This is the #{scenario.name} of Feature 1"
end

After('@scenariof1s2') do |scenario|
puts "This is the #{scenario.name} of Feature 2"
end

After('@scenariof2s2') do |scenario|
puts "This is the #{scenario.name} of Feature 2"
end
