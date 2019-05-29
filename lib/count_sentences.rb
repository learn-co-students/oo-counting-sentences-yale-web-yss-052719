require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
      new_string = self.gsub("?", ".")
      new_string = new_string.gsub("!", ".")
      new_array = new_string.split(".")
    if new_array != nil
      new_array.each do |string|
        if string == ""
          new_array.delete(string)
        end
      end
      sentences = new_array.count
      return sentences
    else
      return 0
    end

  end
end