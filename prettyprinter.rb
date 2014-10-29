require 'date'

	date = Time.now

	hash = {"Jane Doe" => 10, "John Doe" => 9}

class PrettyPrinter

	def espacio

		@text = []

		@text.each do |i|
			if i.class == Array
				text[#posiciondelelemnt] -1

		numSpaces = 0
		space = " "
		elemtSpaces = space * numSpaces


	end


	def print(arg, numSpaces = 0)

		@text = []

		arg.each do |element|

			if element.class == Array

				puts "MALDITO ARRAY:"
				space = " "
				elemtSpaces = space * numSpaces
				text << elemtSpaces

				#Estos valores se incluyen en text en las condiciones siguientes (cuando ya no son arrays)
				print(element, numSpaces+1)


			elsif element.class == String || element.class == Fixnum

				text << element

			elsif element.class == Time

				dateFormat = Time.now.strftime('%a %d %b %Y')

				text << dateFormat

			elsif element.class == Hash

				element.each do |key, value|
  					text << " " + "#{key}->#{value}"
				end

			else 

			puts "An object I don't know how to print"

			end

		end

		puts text

	end

end

printer1 = PrettyPrinter.new
printer1.print([["arrElemnt1", "arrElemnt2"]])
printer1.print([[["arrElemntA", "arrElemntB"], ["otroArr", "otroArr2"]]])
printer1.print([7])
printer1.print(["String"])
printer1.print([date])
printer1.print([hash])
