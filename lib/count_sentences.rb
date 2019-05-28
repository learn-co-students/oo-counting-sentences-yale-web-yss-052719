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
    split_sentence = self.split(/[\.?!]/).delete_if {|c| c == ""}
    split_sentence.count
  end
end
