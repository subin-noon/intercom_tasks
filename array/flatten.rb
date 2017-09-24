class Array
  
  def flatten
    self.inject([]) do |result, el|
      if el.is_a? Array
        result += el.flatten
      else
        result.push(el)
      end
    end
  end
  
end