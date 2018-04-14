class Article < ApplicationRecord
  belongs_to :visible
  belongs_to :category
end
