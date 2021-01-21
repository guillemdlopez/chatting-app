class Chatroom < ApplicationRecord
    has_many :messages
    has_many :users

    CATEGORIES = %w(programming chatting gaming education music entertainment internet)

    validates :category, inclusion: { in: CATEGORIES }
    validates :name, presence: true, length: { minimum: 4, maximum: 30}
    validates :name, uniqueness: true
    validates :description, presence: true, length: { minimum: 10, maximum: 170 }

    has_one_attached :photo
end
