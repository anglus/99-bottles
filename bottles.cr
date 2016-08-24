#!/usr/bin/env crystal

#############################################################################
#                                                                           #
# "99 Bottles of Beer" in Crystal                                           #
#                                                                           #
# by Matthew Morris <user="anglus", domain="gmail.com">                     #
# August 3, 2016 (tested on Crystal 0.18.7).                                # 
#                                                                           #
# Fairly straightforward version using a function and the ternary operator. #
#                                                                           #
# This software is in the public domain.                                    #
#                                                                           #
#############################################################################
 
def bottles(n)
  text = n == 0 ? "no more" : "#{n}"
  text += n == 1 ? " bottle" : " bottles"
  text += " of beer"
  return text
end

99.downto(0) do |num|
  puts bottles(num).capitalize + " on the wall, " + bottles(num) + "." 
  print num == 0 ? "Go to the store and buy some more, " : "Take one down and pass it around, "
  puts bottles(num > 0 ? num - 1 : 99) + " on the wall."
  puts
end  
