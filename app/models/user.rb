class User < ApplicationRecord
    has_secure_password
    # バリデーション（入力チェック）
    validates :uid, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 4 }
    
    # これまでの関連付けも維持する場合
    has_many :restaurants
    has_many :reviews, dependent: :destroy
    has_many :bookmarks, dependent: :destroy
    has_many :bookmarked_reviews, through: :bookmarks, source: :review
end
