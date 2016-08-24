#!/usr/bin/env julia

#=
"99 Bottles of Beer" in Julia

by Matthew Morris <user="anglus", domain="gmail.com">
August 3, 2016 (tested on Julia 0.4.6).

Fairly straighforward version using a function and the ternary operator.

This software is in the public domain.
=#

function bottles(n::Int)
	text = n == 0 ? "no more" : string(n)
	text = string(text, n == 1 ? " bottle" : " bottles")
	text = string(text, " of beer")
	text
end

for num = 99:-1:0
	println(ucfirst(bottles(num)), " on the wall, ", bottles(num), ".")
	print(num == 0 ? "Go to the store and buy some more, " : "Take one down and pass it around, ")
	println(bottles(num > 0 ? num - 1 : 99), " on the wall.")
	println()
end
