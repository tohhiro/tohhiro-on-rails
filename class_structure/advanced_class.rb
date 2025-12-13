# module名もclass名と同様にキャメルケースで命名するのが慣例
module Loggable
  def show_log
    puts "Instance created: #{self.class}."
  end
end

class Score
  # innstanceメソッドでmoduleを利用する。extendにするとクラスメソッドでJSやPHPでいうstaticメソッドのようなイメージ
  # moduleをclassに取り込んで使う方法を「mixin」という
  include Loggable
  # extend Loggable

  def initialize(subject, score)
    @subject = subject
    @score = score
    show_log
  end

  def get_info
    "#{@subject}/ #{@score} -> #{get_result}"
  end

  private
  def get_result
    @score >= 80 ? "Pass" : "Fail"  
  end
end

class MathScore < Score
  def initialize(score)
    super("Math", score)
  end

  # 親クラスのget_resultをオーバーライド
  private
  def get_result
    @score >= 50 ? "Pass" : "Fail"  
  end
end

class EnglishScore < Score
  def initialize(score)
    super("English", score)
  end
end

class User
  include Loggable

  def initialize(name, score)
    @name = name
    @score = score
    show_log
  end

  def get_info
    "Name: #{@name}, Subject: #{@score.get_info}" 
  end
end


user1 = User.new("Taro", MathScore.new(70))
user2 = User.new("Jiro", EnglishScore.new(90))

puts user1.get_info
puts user2.get_info