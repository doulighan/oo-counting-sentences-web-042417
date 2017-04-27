require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    words = self.split(" ")
    count = 0
    words.each do |word| 
      count += 1 if word.sentence? || word.question? || word.exclamation?
    end
    count
  end
end