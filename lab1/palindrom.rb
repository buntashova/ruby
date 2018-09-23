#!/usr/bin/env ruby
def palindrom_check(str)
	if str == str.reverse
		return true
	end

	return false
end 

if __FILE__ == $0
	puts "Введите строку:"
	str = gets.chomp
	
	answer = palindrom_check(str)
	
	if answer == true
		puts "Это палиндром"
	else
		puts "Это не палиндром"
	end
end