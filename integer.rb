
def max_multiplication(string)
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


p max_multiplication('qwetgvg54635hg537j8k97erweg45437u53jnmi,986erhgtr')
p 5*7*3*4
