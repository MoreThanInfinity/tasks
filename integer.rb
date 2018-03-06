#Task 1.
#Implement the function to find the combination of 4 digits in a row which
#gives the maxmultiplication. If object is not a string or there are no
#combinations found - return nil. If combination is found - return
#it`s multiplication result.

def max_multiplication(string)
  return nil if !string.is_a?(String) || string.scan(/\d{4,}/).empty?
  @arr=[]
#Находим все числовые (4+) последовательности
  string.scan(/\d{4,}/).map do |a|
#Извлекаем все возможные 4-ех числовые последовательности, которые идут подряд
    a.split('').each_cons(4){ |a| @arr<<a.join('') }
  end
#Превращаем строковые числовые последовательности в цифры и перемножаем
  @arr=@arr.map{|a| a.split('')}.map{|a| a.map(&:to_i).reduce(:*)}
  return @arr.max
end


