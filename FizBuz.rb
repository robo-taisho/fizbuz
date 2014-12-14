print "数字を入力してね"
maxnum = gets.to_i

for i in (1..maxnum)
x = i % 15
y = i % 5
z = i % 3

if x == 0 #比較演算子に間違えて=を使ってしまった
  puts "FizzBuzz"
elsif y == 0
  puts "Buzz"
elsif z == 0
  puts "Fizz"
else
  puts i
end

end 
