class Game < ApplicationRecord
  belongs_to :winner, class_name: 'User', counter_cache: true
end
