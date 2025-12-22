class Post < ApplicationRecord
  has_many :comments
  # Validationを追加
  # ここではpostを受付ないようにするルールを定義している（バリデーションエラーが表示するわけではない）
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 5 }
end
