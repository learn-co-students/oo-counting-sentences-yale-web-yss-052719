require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
revised_string = self.split(/[!?.]/)

revised_string.delete_if do |x|
  x==""
end
revised_string.count  
end
end