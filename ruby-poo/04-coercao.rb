=begin
    Coerção
    - .to_i = para inteiro
    - .to_f = para float
    - .to_s = para string
=end

puts "Digite sua idade: "
v1 = gets.chomp.to_i
v2 = v1 + 1

# v2 = v1.to_i + 1

puts "Sua idade ano que vem será: #{v2}"