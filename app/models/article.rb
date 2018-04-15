class Article < ApplicationRecord
  belongs_to :visible
  belongs_to :category
  belongs_to :user
  has_many :replies
  has_many :favorites
end
