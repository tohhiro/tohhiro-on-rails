class User
  @@count = 0  # クラス変数の定義

  # attr_accessorを使うとゲッター・セッター両方作成される
  # ゲッター・セッターしたいインスタンス変数は、@ではなくシンボルで指定する
  attr_accessor :name 
  # attr_reader :name  # ゲッターのみ作成
  # attr_writer :name  # セッターのみ作成

  def initialize(name, score)
    # インスタンス変数は@から始まる
    @name = name
    @score = score
    @@count += 1
  end

  ## 下記のようにセッター・ゲッターメソッドを自分で定義することも可能。しかし、attr_xxxを使うほうが簡潔で良い
  # # ゲッターメソッド
  # def name
  #   @name
  # end

  # # セッターメソッド（JSと異なり、setは不要。書き方にクセがある）
  # # メソッド名=()は、空白を入れずに書く必要がある
  # def name=(new_name)
  #   @name = new_name
  # end

  # インスタンスメソッドの定義
  def get_info
    puts "Name: #{@name},  Score: #{@score} -> #{get_result}"
  end

  # クラスメソッドの定義
  def self.user_count
    "Count: #{@@count}"
  end

  private  # 以下のメソッドはprivateになる
  def get_result
    @score >= 60 ? "Pass" : "Fail"
  end
end

# rubyの場合、インスタンス化はnew User()ではない
user1 = User.new("Alice", 100)
puts user1.get_info

# セッターメソッドを使ってnameを変更
user1.name = "Charlie"
puts user1.get_info

user2 = User.new("Bob", 25)
puts user2.get_info

# インスタンス変数は外部から直接アクセスできないためエラーになる。メソッドしかアクセスできない
# nameというメソッドを定義しているので、以下は動作する
puts user2.name 
puts User.user_count