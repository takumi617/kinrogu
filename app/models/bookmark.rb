class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :review
  
  # user_id と review_id の組み合わせの重複をモデルレベルでも防ぐ
  validates :user_id, uniqueness: { scope: :review_id }
end
