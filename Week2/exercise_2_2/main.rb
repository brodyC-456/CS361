# Name Mangler

@name = "Brody Couture"

# Mangle the name by reversing it or borgifying it
def modified_name(name, borgify)
  if borgify
    name = borgify(name)
  else 
    name = reverse_name(name)
  end
end

# If our modified_name is passed true, we add Borg to it
def borgify(name)
  name << "Borg"
end

# Reverses the first and last name of @name
def reverse_name(name)
  split_name = name.split
  reversed_name = split_name.reverse
  final = reversed_name.join(' ')
end


puts "New name: #{modified_name(@name, false)}"
puts "New borg name: #{modified_name(@name, true)}"




