#!/usr/bin/env ruby
def reproduction(month)
	return 2 ** month
end

if __FILE__ == $0
	puts "Введите количество месяцев"
	month = gets.chomp.to_i
	rabbits = reproduction(month)
	puts "#{rabbits/2} пар кроликов"

end