dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(str, dict)
    result = {}
    lower_str = str.downcase
    lower_str.split(" ").each do |word|
        dict.each do |term|
            if word.include?(term)
                if result.dig(term) == nil
                    result[term] = 1
                else
                    result[term] += 1
                end
            end
        end
    end
    return result
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)