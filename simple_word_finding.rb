#Если минимально использовать возможности руби,
#то только так понимаю.

#Если условно допустить, что в каком то языке программирования
#есть что-то простое, что похоже на несуществующий
#руби метод для строк - .each_char_with_index

def find_word(str, word)
  str.split('').each_with_index do |c,i|
    if str[i] == word[0]
      if str[i...i+word.length] == word
        return i
      end
    end
  end
  return -1
end

