class Owner < ApplicationRecord
#  has_one :user
  has_many :collections
  has_many :cards, through: :collections
  has_many :decks, through: :collections
end
