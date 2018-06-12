# Write your code here.

# take_a_number method accepts the current line (array), and the name of a new customer which is pushed into the array (shovel '<<' to array [katz_deli]). Then uses string interporlation to puts out the customer name, and their place in line.

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
    katz_deli.each_index do |value, index|
      note += " #{index.to_i+1}. #{value}"
    end
    puts "#{note}"
  end
end

# This method calls who is currently being served in the line by reading the array. If the length is at 0, i.e. nothing in the array, the method will puts "There is nobody waiting to be served!" Else, it will call who is being served. Using .shift retrieves, and REMOVES, the first item in the array. 

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end
