class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom
  has_many :likes

  validates :body, presence: true, length: { minimum: 1 }

  scope :custom_display, -> { order(:created_at).last(100) }
end
