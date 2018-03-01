#Task 2.
#Implement the function to sort array of numbers by amount of '1' in
#its binary representation. Numbers with identical amount of '1's
#should be ordered by decimal representation.

def srt (arr)
  arr.sort_by { |x| [x.to_s(2).count('1'), x] }
end

