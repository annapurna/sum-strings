

class Addition
    def add_numbers(str)
      return 0 if str.empty?
      delimiters = [',','\n',';']
      arr_str =  str.split(Regexp.union(delimiters))
      negative_numbers = arr_str.select { |val| val.to_i < 0}.join(',')
      return "Negative numbers are not allowed #{negative_numbers}" unless negative_numbers.empty?
      return arr_str.select{|str_val| /^[0-9]+$/.match?(str_val) }.map(&:to_i).sum
    end
end
