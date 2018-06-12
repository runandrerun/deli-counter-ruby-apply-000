# Write your code here.

# Accepts the current line (array), and the name of a new customer(shovel '<<' to array [katz_deli]). Then use string interporlation to puts it out the customer name, and place in line.

def take_a_number(katz_deli, customer)
  katz_deli << customer
  puts "Welcome, #{customer}. You are number #{katz_deli.length} in line."
end

# Line method accepts the current array (katz_deli). If it's empty, it will state that the line is empty (puts). If not, it will list who is in line by iterating over the array. value = customer name, index = line in the array (+1 because indices start at 0). .each_with_index enumerator puts out index. 

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
