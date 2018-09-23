#!/usr/bin/env ruby
def scale_check (scale)
	return ["f", "c", "k"].include?(scale.downcase)
end

def scale_trans (degrees,src_scale,dst_scale)
	if src_scale == "c"
		if dst_scale == "f"
			return ((9.0 * (degrees + 32.0)) / 5.0)
		end
		if dst_scale == "k"
			return (degrees + 273.15)
		end	  
	end

	if src_scale == "f"
		if dst_scale == "c"
			return (5.0/9.0 * (degrees - 32.0)) 
		end
		if dst_scale == "k"
			return (5.0*(degrees - 32.0)/9.0 + 273.15)
		end
	end

	if src_scale == "k"
		if dst_scale == "c"
			return (degrees - 273.15) 
		end
		if dst_scale == "f"
			return (9.0*(degrees - 273.15)/5.0 + 32.0) 
		end
	end

	return (degrees)

end

if __FILE__ == $0
	puts "Введите градусы:"
	degrees = gets.chomp
	puts "Поддерживаемые шкалы : С - Цельсия, F - Фарингейт, K - Кельвин"
	puts "Введите исходную шкалу:"
	src_scale = gets.chomp
	if scale_check(src_scale) == false
		puts "Ошибка неизвестная шкала!"
		exit
	end
	puts "Введите итоговую шкалу:"
	dst_scale = gets.chomp
	if scale_check(dst_scale) == false
		puts "Ошибка неизвестная шкала!"
		exit
	end

	answer = scale_trans(degrees.to_f,src_scale.downcase,dst_scale.downcase)

	puts "#{degrees.to_f} #{src_scale} = #{answer} #{dst_scale}"
end