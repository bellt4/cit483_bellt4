#!/usr/bin/ruby

# introspection.rb
# Troy Bell
# 25Sep2017
# CIT483

objects = [ 3, 3.0, "A message", %w[u v w x y z], {:IN=>"Indiana", :IL=>"Illinois"}, (90..100) ]
methods = [ :collect, :times, :size, :each, :+, :*, :to_a, :to_s ]


# each loop that displays the object in its natural form
# for.each objects(obj)  do
objects.each_key do |obj|
  obj = object.sample
  c = obj.class
  puts "#{obj}"


# each loop to determine if the object recognizes the method
#  for.each methods(m)  do
  methods.each_key do |m|
    # error handling for + invoked on a fixnum
    begin
    obj.methods.sort
    obj.send(m)
    p " Calling method #{m} on object #{obj} "
    rescue

    end
# if loop to recognize the methods for an object and display them
    if (obj.send(m))

      p "#{obj} and #{m} "
    else
      p "Objects of type #{c} do not normally respond to the #{m} method "

end
end
end
