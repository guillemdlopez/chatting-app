class User < ApplicationRecord
    validates :username, presence: true, length: { minimum: 3, maximum: 15 }

    validates :username, :email, uniqueness: true
    
    has_secure_password

    has_many :messages, dependent: :destroy

    has_one_attached :avatar

    STATUS = ['online', 'offline', 'absent', 'do not disturb', 'idle']

    validates :status, inclusion: { in: STATUS }
end
