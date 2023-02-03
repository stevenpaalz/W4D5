def first_anagram?(str_1, str_2)
    return false if str_1.length != str_2.length
    get_anagrams(str_1).include?(str_2)
end

def get_anagrams(str)
    return str if str.length == 1
    result = []
    get_anagrams(str[0...-1]).each do |string|
        (0...string.length)
    end

    # str[-1]
end