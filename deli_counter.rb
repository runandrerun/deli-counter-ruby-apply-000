# Write your code here.

# Accepts the current line (array), and the name of a new customer(shovel '<<' to array [katz_deli]) 

def take_a_number(katz_deli, customer)
  katz_deli << customer
  puts "Welcome, #{customer}. You are number #{katz_deli.length} in line."
end

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    note = "The line is currently:"

    katz_deli.each_with_index do |value, index|
      note += " #{index.to_i+1}. #{value}"
    end
    puts "#{note}"
  end
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end
