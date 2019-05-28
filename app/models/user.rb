class User < ApplicationRecord
  has_secure_password
  has_many :winnings, foreign_key: :winner_id, class_name: 'Game'
end
