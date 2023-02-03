def first_anagram?(str_1, str_2)
    return false if str_1.length != str_2.length
    return true if str_1 == str_2
    get_anagrams(str_1).include?(str_2)
end

def get_anagrams(str)
    return [str] if str.length == 1 
    result = []
    get_anagrams(str[0...-1]).each do |substring|
        (0..substring.length).each do |charidx|
            result << substring[0...charidx] + str[-1] + substring[charidx..-1]
        end
    end
    result
end

# O(n!)

# puts first_anagram?("cat","bat")
