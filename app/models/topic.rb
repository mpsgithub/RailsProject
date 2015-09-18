class Topic < ActiveRecord::Base
  belongs_to :subcategory
  has_many :puzzles
end
