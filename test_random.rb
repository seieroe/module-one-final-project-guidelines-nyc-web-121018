
puts(
  5_000_000.times.map do
    num1 = rand(5)
    num2 = 4
    
    if num1 == num2
      1
    else
      0
    end
  end.inject(:+).to_f / 5_000_000
)
