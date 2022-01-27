class Chatroom < ApplicationRecord
    has_many :messages
    has_many :users

    CATEGORIES = %w(programming chatting gaming education music entertainment internet sport).freeze

    validates :category, inclusion: { in: CATEGORIES }
    validates :name, presence: true, length: { minimum: 4, maximum: 30}
    validates :name, uniqueness: true
    validates :description, presence: true, length: { minimum: 10, maximum: 170 }

    has_one_attached :photo

    def self.search(params)
        where("name LIKE :chat", chat: "%#{params}%").or(where('description LIKE :chat', chat: "%#{params}%")).or(where('category LIKE :chat', chat: "%#{params}%"))
    end
end
