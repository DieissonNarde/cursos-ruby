system "clear"

# This is a comment!
puts "Hello World!".downcase
puts "Hello World!".upcase
puts "Hello World!".capitalize
puts "Hello World!".reverse
puts "Hello World!".length

# 8. Variables
first_name = "Dieisson"
puts first_name

# 9. Getting User Input With Gets
print "Enter your last name: "
last_name = gets.chomp

puts "Hello, #{first_name} " + last_name

# 11. Simple Math
puts "+ - * / ** %"

puts 10 + 5
puts 10 - 5
puts 10 * 5
puts 10 / 5
puts 10 ** 5
puts 10 % 5

# Floats
puts 10 + 5.5
puts 10 / 3

# Não arredonda
puts 10.0 / 3.0
puts 10 / 3.0
puts 10.0 / 3

puts 10 * 0.5

# 12. Converting To An Integer
print "Enter a number: "
#number = gets
number = gets.to_i #converter a string para inteiro
puts number + 10

puts 10 + 5

num_1 = 10
num_2 = 5

puts num_1 + num_2

number.to_s #converter inteiro para string
puts number

=begin
    13. Comparison Operators
    ==
    |=
    >
    <
    >=
    <=
=end

puts "john" == "john".downcase

=begin
    14. Assigment Operators
    =
    +=
    -=
    *=
    /=
    **=
    %=
=end

age = 39
puts age

# Não atribui
puts age + 1

puts age

puts age += 1

puts age

# 15. If/Else Conditional Statements
print "Enter a number between 1 and 10: "
num = gets.to_i

if num > 10
    puts "Hey! I said between 1 and 10!"
elsif num > 5
    puts "#{ num } is greater than 5"
elsif num == 5
    puts "#{ num } is equal to 5"
else
    puts "#{ num } is less than 5"
end

print "Enter your name "
name = gets.chomp

if name == "Dieisson"
    puts "Hello Dieisson!"
else
    puts "I don't know you!"
end

# 16. Arrays
new_time = "Manchester United"
countries = ["Brasil", "Alemanha", "Itália", "Espanha", "Inglaterra"]

my_times = [countries, "Flamengo", "Bayern", "Juventus", "Real Madrid", new_time]

puts my_times[1]
puts my_times.length
puts my_times[3]
puts my_times[my_times.length]
puts my_times[my_times.length - 1]
puts my_times[5 - 1]

puts my_times[0]
puts "--------------"
puts my_times[0][0]
puts my_times[0][2]

=begin
    17. While Loops

    while CONDITION
        DO SOMETHING
    end
=end

num_while = 1
while num_while < 5
    puts num_while
    puts "I love cheese!!!"
    num_while += 1
end

# 18. Each Loops
(1..10).each do |num_each|
    puts num_each
    puts "I love cheese!"
end

countries.each do |country|
    puts country
end

# 19. Hashes
favorite_times = {
    "Brasil" => "Flamengo",
    "Alemanha" => "Bayern",
    "Itália" => "Juventus",
    "Espanha" => "Real Madrid"
}

puts favorite_times
puts favorite_times["Brasil"]
puts favorite_times["Alemanha"]

# 20. Building FizzBuzz!
(1..100).each do |num_fizzbuzz|
    if num_fizzbuzz % 3 == 0 && num_fizzbuzz % 5 == 0
        puts "#{num_fizzbuzz}. FIZZBUZZ!"
    elsif num_fizzbuzz % 3 == 0
        puts "#{num_fizzbuzz}. FIZZ!"
    elsif num_fizzbuzz % 5 == 0
        puts "#{num_fizzbuzz}. BUZZ!"
    else
        puts "#{num_fizzbuzz}."
    end
end

# 21. Methods Part 1
def hello()
    puts "Hello there!"
end

hello

def hello_name(my_name)
    puts "Hello there #{ my_name }"
end

hello_name("Dieisson")

# 22. Methods Part 2
def hello_fullname(first, last)
    return "Hello there #{ first } #{ last }"
end

puts hello_fullname("Dieisson", "Narde")

method_output = hello_fullname(first_name, last_name)

puts method_output
puts method_output.upcase
puts method_output.downcase

# 24. Ruby Classes Part 1
class Square
    def initialize(side_length)
        @side_length = side_length
    end
end

my_square = Square.new(10)

# local na memória onde essa classe está agora
puts my_square
puts my_square.inspect


# 25. Class Getters
class SquareGetters
    def initialize(side_length)
        @side_length = side_length
    end

    def side_length
        return @side_length
    end
end

square_getter = SquareGetters.new(10)
puts square_getter.side_length


# 26. Class Setters
class SquareSetters
    def initialize(side_length)
        @side_length = side_length
    end

    def side_length
        return @side_length
    end

    def side_length=(side_length)
        @side_length = side_length
    end
end

square_setter = SquareSetters.new(10)
puts square_setter.side_length

square_setter.side_length = 20
puts square_setter.side_length


# 27. Adding Perimeter and Area Methods
class Square2
    def initialize(side_length)
        @side_length = side_length
    end

    def side_length
        return @side_length
    end

    def side_length=(side_length)
        @side_length = side_length
    end

    def perimeter
        return @side_length * 4
    end

    def area
        return @side_length * @side_length
    end

    def to_s
        return "Side Length: #{@side_length}\nPerimeter: #{perimeter}\nArea: #{area}"
    end
end

my_square2 = Square2.new(10)
puts my_square2.perimeter
puts my_square2

# 28. Class Attr Accessor
class Square3
    attr_reader
    attr_writer
    attr_accessor :side_length

    def initialize(side_length)
        @side_length = side_length
    end

    def perimeter
        return @side_length * 4
    end

    def area
        return @side_length * @side_length
    end

    def to_s
        return "Side Length: #{@side_length}\nPerimeter: #{perimeter}\nArea: #{area}"
    end
end

my_square3 = Square3.new(10)
my_square3.side_length = 20

puts my_square3.side_length

#29. Creating a Draw Method
class Square4
    attr_reader
    attr_writer
    attr_accessor :side_length

    def initialize(side_length)
        @side_length = side_length
    end

    def perimeter
        return @side_length * 4
    end

    def area
        return @side_length * @side_length
    end

    def to_s
        return "Side Length: #{@side_length}\nPerimeter: #{perimeter}\nArea: #{area}"
    end

    def draw
        puts "*" * @side_length
        (@side_length - 2).times do
            print "*" + (" " * (@side_length - 2)) + "*\n"
        end

        puts "*" * @side_length
    end
end

my_square4 = Square4.new(5)

puts my_square4.draw