require 'pry'

class String

  def punct_test(arg)
	if self.end_with?(arg)
		true
	else
		false
	end
  end

  def sentence?
    punct_test(".")
  end

  def question?
  	punct_test("?")
  end

  def exclamation?
  	punct_test("!")
  end

  def count_sentences
  	self.tr('!?', ".").split(".").delete_if do |element|
  		element == ""
  	end.count
  end
end