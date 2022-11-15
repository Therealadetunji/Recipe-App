class User < ApplicationRecord
  has_many :foods, foreign_key: 'user_id'
end
