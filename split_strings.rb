def solution(str)

    if str.empty?
        return []
    end

    if str.length.odd?
        str += "_"
    end

    return str.chars.each_slice(2).map(&:join)

end

print solution("abcdef")

#Test.assert_equals(solution("abcdef"), ["ab", "cd", "ef"])
#Test.assert_equals(solution("abcdefg"), ["ab", "cd", "ef", "g_"])
#Test.assert_equals(solution(""), [])